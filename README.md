# FusionAuth + Tailwind + DaisyUI

This repository contains an example of how to integrate [Tailwind CSS](https://tailwindcss.com), and [DaisyUI](https://daisyui.com/) into your [FusionAuth](https://fusionauth.io) theme.

## Prerequisites

* curl
* node
* npm
* jq: https://stedolan.github.io/jq

## Installation

* `npm install`
* update `.env.sample` with your API key, FusionAuth hostname, and theme id and copy it to `.env`
* you can modify the TMP_DIR to be whereever you'd like it to be, the default is `tmp` in the current directory.

The provided API key must have `/api/theme` permissions for the `GET` and `PATCH` methods.

## Usage

Run `download.sh` to pull down theme files, including freemarker, messages and stylesheet files.

Commit them to version control.

In separate terminals, run `npm run watch` and `npm run watch:tailwind`. This will upload any modified templates and will overwrite anything present in the remote system whenever a local file changes.

Edit the files using whatever local editor you want.

In the browser, reload themed pages and see your changes live.

When done, commit changes to version control.

You can do a final upload of whatever is in the TMP_DIR by running `upload.sh`.

