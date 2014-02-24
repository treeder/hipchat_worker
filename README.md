hipchat_worker
==============

## Usage

First make a config.yml file containing contents from `hipchat.config.yml` and edit it with your settings. Then:

To use without cloning:

    iron_worker upload https://github.com/treeder/hipchat_worker/blob/master/hipchat.worker --worker-config config.yml

If you've cloned this repo and have it locally:

    iron_worker upload hipchat --worker-config config.yml

Queue a test task:

    iron_worker queue hipchat --payload '{"body": "hello world!"}'

Then queue up tasks for it from anywhere. See the hipchat.worker file for required parameters/inputs.

    @iw.tasks.create("hipchat", {"body": "hello world!"})

