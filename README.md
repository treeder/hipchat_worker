hipchat_worker
==============

## Usage

To use without cloning:

    iron_worker upload https://github.com/treeder/hipchat_worker/blob/master/hipchat.worker

If you've cloned this repo and have it locally:

    iron_worker upload hipchat

Then queue up tasks for it from anywhere. See the hipchat.worker file for required parameters/inputs.

    @iw.tasks.create("hipchat", params)

