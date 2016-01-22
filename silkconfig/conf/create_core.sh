dsetool write_resource silkconfig.silkconfig name=stopwords.txt file=stopwords.txt
dsetool write_resource silkconfig.silkconfig name=synonyms.txt file=synonyms.txt
dsetool write_resource silkconfig.silkconfig name=lang/stopwords_en.txt file=lang/stopwords_en.txt
dsetool write_resource silkconfig.silkconfig name=protwords.txt file=protwords.txt
dsetool create_core silkconfig.silkconfig schema=./schema.xml solrconfig=./solrconfig.xml

