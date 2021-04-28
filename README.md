# safex-node
This will run the daemon from <a href="https://github.com/safex/safexcore" target="_blank">Safex Core</a> as a node only. No mining. No RPC-node. The in/out peers are set to 50.<br>
To receive <b>in</b>-peers make sure port range17400-17403 is open on the router/network and if needed portforwarded to the docker-host, or the host is connected to the internet directly

<h1>Supported Tags</h1>
<ul>
<li><code>latest</code></li>
<li><code>7.0.1</code></li>
</ul>
<br>
<h1>Runing the node</h1>

<h2>With default data location</h2>
<code>$ docker run -p 17400-17403:17400-17403 safexninja/safex-node</code>

<br><h2>With mount local volume (on the host) to /data folder in the container</h2>
<code>$ docker run -p 17400-17403:17400-17403 -v [volume]:/data safexninja/safex-node</code><br><br>
<b>example</b><br>
<code>$ docker run -p 17400-17403:17400-17403 -v <b>/home/.safex</b>:/data safexninja/safex-node</code><br>
this will persist the blockchain data in <i>/home/.safex</i> on the host<br>

<br><h2>Override version number</h2>
When new version is released and there is no new container yet, override version by overriding environmental variable, i.e to set it to 7.0.0<br>
<code>$ docker run -p 17400-17403:17400-17403 <b>-e VERSION=7.0.0</b> -v [volume]:/data safexninja/safex-node</code><br><br>

<h1>Installing Docker & Runing the node</h1>
Installing Docker on Ubuntu and run the latest node.<br>
If you have not installed docker yet, follow these steps:<br><br>

<code>$ sudo apt update</code><br>
<code>$ sudo apt install snapd</code><br>
<code>$ sudo snap install docker</code><br>
<code>$ docker run -p 17400-17403:17400-17403 -v <b>/home/.safex</b>:/data safexninja/safex-node</code><br>
<br>
If you have docker installed already (i.e. Docker Desktop on Mac), then just run the last command only
