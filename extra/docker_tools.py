import subprocess
import sys


def task_docker_ready():
    """Check that docker can be executed inside the container."""

    def _docker_ready():
        try:
            subprocess.check_call('docker ps >/dev/null 2>&1', shell=True)
            return True
        except subprocess.CalledProcessError:
            print('Docker not ready!')
            print("Check the 'alias doit_in_docker' to see if the docker socket"
                  ' matches the location in your system.')
            sys.exit(1)

    return {
        'uptodate': [_docker_ready],
        'actions': ['touch .docker_ready'],
        'targets': ['.docker_ready'],
    }


def _image_exist(img, cmd='inspect'):
    try:
        subprocess.check_output(
            'docker {cmd} {img} 1>/dev/null 2>&1'.format(cmd=cmd, img=img),
            shell=True)
        return True
    except subprocess.CalledProcessError:
        return False


def images_exist(*imgs):
    """Check if the images exist in local index"""

    return all(_image_exist(img) for img in imgs)


def remote_images_exist(*imgs):
    """Check if the images exist in remote registry"""

    return all(_image_exist(img, cmd='pull') for img in imgs)
