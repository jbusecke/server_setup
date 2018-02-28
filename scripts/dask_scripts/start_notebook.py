from dask.distributed import Client
import socket

client = Client(scheduler_file='scheduler.json')
print(client)

host = client.run_on_scheduler(socket.gethostname)


def start_jlab(dask_scheduler):
    import subprocess
    proc = subprocess.Popen(['jupyter', 'notebook', '--ip', host])
    dask_scheduler.jlab_proc = proc


client.run_on_scheduler(start_jlab)

print("HOST : %s" % host)
