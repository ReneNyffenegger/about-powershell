[xml] $xml = "
<root>

  <items id='1'><item>eggs</item> </items>
  <items id='2'><item>foo</item><item>bar</item><item>baz</item></items>
  <items id='3'><item>hen</item></items>

</root>"

$xml.root.items[1].item[2]
#
# baz

($xml | select-xml -xpath '/root/items[@id="2"]').value
#
# baz
