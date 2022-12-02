#!/usr/bin/env python3
import json
import os
import sys


def detail_resource_changes(step_summary_out, info):
    changes = info.get("resource_changes")
    if not changes:
        print("*No resource changes detected*")
        return
    print("### Resource changes", file=step_summary_out)

    to_create = []
    to_update = []
    to_replace = []
    to_delete = []

    for change in changes:
        address = change["address"]
        action_reason = change.get("action_reason", "No reason provided")

        actions = change["change"]["actions"]

        if 'create' in actions and 'delete' in actions:
            to_replace.append(address)
        elif 'delete' in actions:
            to_delete.append(address)
        elif 'create' in actions:
            to_create.append(address)
        elif 'update' in actions:
            to_update.append(address)

    if len(to_delete) != 0:
        print("#### WARNING: SOME RESOURCES WILL BE DELETED!", file=step_summary_out)
        print("::warning title=Warning for deleting::Some resources will be deleted on apply")
    if len(to_replace) != 0:
        print("#### WARNING: SOME RESOURCES WILL BE REPLACED!", file=step_summary_out)
        print("::warning title=Warning for replacing::Some resources will be replaced on apply")

    print("Number of items to create : %d" % len(to_create), file=step_summary_out)
    print("Number of items to update : %d" % len(to_update), file=step_summary_out)
    print("Number of items to replace: %d" % len(to_replace), file=step_summary_out)
    print("Number of items to delete : %d" % len(to_delete), file=step_summary_out)


def main(step_summary_out, info):
    info = json.loads(info)

    if not info["format_version"].startswith("1."):
        raise Exception("Format version %s not supported" % info["format_version"])

    print("Terraform version: %s" % info["terraform_version"])
    print("Format version: %s" % info["format_version"])

    detail_resource_changes(step_summary_out, info)


if __name__ == '__main__':
    info = sys.stdin.read().split('\n')
    # The terraform wrapper outputs the full terraform command as line 0...
    if info[0].startswith("{"):
        info = info[0]
    else:
        info = info[1]
    if "GITHUB_STEP_SUMMARY" in os.environ:
        # Running in GitHub, print info to step summary file
        with open(os.environ["GITHUB_STEP_SUMMARY"], "a") as step_summary:
            main(step_summary, info)
    else:
        # Not in GitHub, print everything to stdout
        main(sys.stdout, info)
