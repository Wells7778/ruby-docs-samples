<img src="https://avatars2.githubusercontent.com/u/2810941?v=3&s=96" alt="Google Cloud Platform logo" title="Google Cloud Platform" align="right" height="96" width="96"/>

# Google BigQuery API Ruby Samples

[BigQuery][bigquery_docs] is Google's fully managed, petabyte scale, low cost
analytics data warehouse.

[bigquery_docs]: https://cloud.google.com/bigquery/docs/

## Samples

### Datasets

```
Usage: ruby datasets.rb <command> [arguments]

Commands:
  create <dataset_id>   Create a new dataset with the specified ID
  list                  List datasets in the specified project
  delete <dataset_id>   Delete the dataset with the specified ID
```

### Tables

```
Usage: ruby tables.rb <command> [arguments]

Commands:
  create                     <dataset_id> <table_id>  Create a new table with the specified ID
  list                       <dataset_id>             List all tables in the specified dataset
  delete                     <dataset_id> <table_id>  Delete table with the specified ID
  list_data                  <dataset_id> <table_id>  List data in table with the specified ID
  import_file                <dataset_id> <table_id> <file_path>
  import_gcs                 <dataset_id> <table_id> <cloud_storage_path>
  import_gcs_json            <dataset_id>
  import_gcs_json_autodetect <dataset_id>
  import_data                <dataset_id> <table_id> "[{ <json row data> }]"
  append_rows                <dataset_id> <table_id>
  overwrite_rows             <dataset_id> <table_id>
  export                     <dataset_id> <table_id> <cloud_storage_path>
  query                      <query>
  query_job                  <query>
```

### Stack Overflow

```
Usage: ruby stackoverflow.rb
```

This sample queries the [Stack Overflow public
dataset][stackoverflow_dataset] for top questions tagged with
`google-bigquery`.

[stackoverflow_dataset]: https://cloud.google.com/bigquery/public-data/stackoverflow
