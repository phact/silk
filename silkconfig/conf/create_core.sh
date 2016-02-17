#dsetool write_resource silkconfig.silkconfig name=stopwords.txt file=stopwords.txt
#dsetool write_resource silkconfig.silkconfig name=synonyms.txt file=synonyms.txt
#dsetool write_resource silkconfig.silkconfig name=lang/stopwords_en.txt file=lang/stopwords_en.txt
#dsetool write_resource silkconfig.silkconfig name=protwords.txt file=protwords.txt
#dsetool create_core silkconfig.silkconfig schema=./schema.xml solrconfig=./solrconfig.xml
curl http://localhost:8983/solr/resource/silkconfig.silkconfig/solrconfig.xml
  --data-binary @solrconfig.xml -H 'Content-type:text/xml; charset=utf-8'
curl http://localhost:8983/solr/resource/silkconfig.silkconfig/schema.xml
  --data-binary @schema.xml -H 'Content-type:text/xml; charset=utf-8'
curl http://localhost:8983/solr/resource/silkconfig.silkconfig/stopwords_en.xml
  --data-binary @lang/stopwords_en.xml -H 'Content-type:text/xml; charset=utf-8'
curl http://localhost:8983/solr/resource/silkconfig.silkconfig/protowords.xml
  --data-binary @protowords.xml -H 'Content-type:text/xml; charset=utf-8'
curl http://localhost:8983/solr/resource/silkconfig.silkconfig/synonyms.xml
  --data-binary @synonyms.xml -H 'Content-type:text/xml; charset=utf-8'
curl http://localhost:8983/solr/resource/silkconfig.silkconfig/stopwords.xml
  --data-binary @stopwords.xml -H 'Content-type:text/xml; charset=utf-8'
curl "http://localhost:8983/solr/admin/cores?action=CREATE&name=silkconfig.silkconfig&reindex=true"
