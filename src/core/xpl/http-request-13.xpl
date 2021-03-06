<p:pipeline xmlns:p="http://www.w3.org/ns/xproc"
            xmlns:c="http://www.w3.org/ns/xproc-step"
            version="1.0">

  <p:documentation xmlns="http://docbook.org/ns/docbook">
    <para>The <att>detailed</att> and <att>status-only</att> attributes aren't
just for authentication. You can use them for unprotected resources as well.
Here's an example that uses <att>detailed</att> on an ordinary resource.</para>
  </p:documentation>

  <p:pipeinfo xmlns:cx="http://xmlcalabash.com/ns/extensions"
              cx:show-source='false'>
    <doc/>
  </p:pipeinfo>

  <p:http-request>
    <p:input port="source">
      <p:inline>
        <c:request href="http://tests.xproc.org/docs/helloworld.xml" method="get"
                   detailed="true"/>
      </p:inline>
    </p:input>
  </p:http-request>

</p:pipeline>
