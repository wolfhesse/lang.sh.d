<p>pipe to netcat | listen | pipe - segments
rq-env-add mailbot</p>
<h2>pipe-seg</h2>
<p>RQ: PRODUCER env var als streamer</p>
<h2>pipe-consumer</h2>
<p>run_once holt ein readme von nc-server-1 und piped es durch pythnon markdown (filter)</p>
<h2>nc-server-1</h2>
<p>while true cat readme | nc</p>
<h2>dd-integration</h2>
<h3>CURRENT: WIP SCHLAGWERK</h3>
<p>scenario: </p>
<p>code/lang ist remote origin zu data/lang
 data/lang ist integration-base .. | stable-sys</p>
<ul>
<li>
<p>in /code/lang.sh.d/pipe-seg/nc-server-1 (dev: pipe-seg branch)
<code>sh
    sh run_once.sh | nc -l -p 1235 -k</code> </p>
</li>
<li>
<p>in /opt/data.d/lang.sh.d/handle-sendport (int: dd-integration branch)
<code>sh
    while true; do sh run_once.sh ; done</code></p>
</li>
<li>
<p>in /opt/data.d/langs.sh.d/pipe-consumer
<code>sh
    # ergebnis msc:s sollte ueber crontab 'erzeugt' werden
    # ergebnis msc:c koennte weitergestreamt werden mit netcat, oder curl.webhook (im cronjob)
    sh run_once.sh &amp;&amp; cat run_once.res &gt; run_once.html</code></p>
</li>
</ul>
<p>RQ: Dockerfile mit forever auf den server.sh</p>
<pre><code>-p outer:inner gateway / line
</code></pre>
<h2></h2>