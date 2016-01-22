define(function (require) {
  return function CheckForKibanaIndexFn($http, Private, es, Notifier, configFile) {
    var SetupError = Private(require('components/setup/_setup_error'));
    var notify = new Notifier({ location: 'Setup: Kibana index check' });

    return function checkForKibana() {
      var complete = notify.lifecycle('kibana index check');
      // return es.indices.exists({
      //   index: configFile.kibana_index
      // })
      // .catch(function (err) {
      //   throw new SetupError('Unable to check for Kibana index "<%= configFile.kibana_index %>"', err);
      // })

      //return $http.get(configFile.solr + configFile.collectionsApi + '?action=LIST&wt=json')
      return $http.get(configFile.solr + configFile.collectionsApi + '?wt=json')
      .then(complete, complete.failure);
    };
  };
});
