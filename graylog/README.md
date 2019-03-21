# graylog

Base on php, support graylog2


#### http input example :

```
{
  "check_result": {
    "result_description": "Stream had 2 messages in the last 1 minutes with trigger condition more than 1 messages. (Current grace time: 0 minutes)",
    "triggered_condition": {
      "id": "f62222ab-896c-46a9-bcc2-45f4e6dab2bd",
      "type": "message_count",
      "created_at": "2019-03-18T03:04:58.871Z",
      "creator_user_id": "ricky",
      "title": "Condidtion TEST......",
      "parameters": {
        "backlog": 3,
        "repeat_notifications": false,
        "query": "*",
        "grace": 0,
        "threshold_type": "MORE",
        "threshold": 1,
        "time": 1
      }
    },
    "triggered_at": "2019-03-21T02:05:23.090Z",
    "triggered": true,
    "matching_messages": [
      {
        "index": "nginx-access_0",
        "message": "192.168.56.2 - - [21/Mar/2019:10:05:02 +0800] \"GET / HTTP/1.1\" 304 0 \"-\" \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\" \"-\"",
        "timestamp": "2019-03-21T02:05:03.510Z",
        "source": "local.centos.com",
        "stream_ids": [
          "5c8b57e3b901012401c92ab7"
        ],
        "fields": {
          "gl2_source_collector": "2a0b8f0e-8157-4e1d-9c99-2fe7d4ba5a17",
          "file": "/var/log/nginx/access.log",
          "offset": 3015,
          "collector_node_id": "local.centos.com",
          "gl2_remote_ip": "192.168.0.200",
          "gl2_remote_port": 56013,
          "name": "local.centos.com",
          "gl2_source_node": "38a1f1d7-5727-46bd-813c-48af21e65ec3",
          "type": "log",
          "gl2_source_input": "5c04cfbbb901012e779d5d8b",
          "facility": "filebeat",
          "tags": [
            "nginx"
          ]
        },
        "id": "bdd85f60-4b7d-11e9-8aa8-0a12b97bb2ba"
      },
      {
        "index": "nginx-access_0",
        "message": "192.168.56.2 - - [21/Mar/2019:10:05:01 +0800] \"GET / HTTP/1.1\" 304 0 \"-\" \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\" \"-\"",
        "timestamp": "2019-03-21T02:05:03.509Z",
        "source": "local.centos.com",
        "stream_ids": [
          "5c8b57e3b901012401c92ab7"
        ],
        "fields": {
          "gl2_source_collector": "2a0b8f0e-8157-4e1d-9c99-2fe7d4ba5a17",
          "file": "/var/log/nginx/access.log",
          "offset": 2814,
          "collector_node_id": "local.centos.com",
          "gl2_remote_ip": "192.168.0.200",
          "gl2_remote_port": 56013,
          "name": "local.centos.com",
          "gl2_source_node": "38a1f1d7-5727-46bd-813c-48af21e65ec3",
          "type": "log",
          "gl2_source_input": "5c04cfbbb901012e779d5d8b",
          "facility": "filebeat",
          "tags": [
            "nginx"
          ]
        },
        "id": "bdd81140-4b7d-11e9-8aa8-0a12b97bb2ba"
      }
    ]
  },
  "stream": {
    "creator_user_id": "ricky",
    "outputs": [],
    "description": "nginx access log",
    "created_at": "2019-03-15T07:44:35.757Z",
    "rules": [
      {
        "field": "tags",
        "stream_id": "5c8b57e3b901012401c92ab7",
        "description": "",
        "id": "5c8b69ccb901012401c93e3f",
        "type": 6,
        "inverted": false,
        "value": "nginx"
      }
    ],
    "alert_conditions": [
      {
        "creator_user_id": "ricky",
        "created_at": "2019-03-18T03:04:58.871Z",
        "id": "f62222ab-896c-46a9-bcc2-45f4e6dab2bd",
        "type": "message_count",
        "title": "Condidtion TEST......",
        "parameters": {
          "backlog": 3,
          "repeat_notifications": false,
          "query": "*",
          "grace": 0,
          "threshold_type": "MORE",
          "threshold": 1,
          "time": 1
        }
      }
    ],
    "title": "nginx-access",
    "content_pack": null,
    "is_default_stream": false,
    "index_set_id": "5c8b57a1b901012401c92a6a",
    "matching_type": "OR",
    "remove_matches_from_default_stream": true,
    "disabled": false,
    "id": "5c8b57e3b901012401c92ab7"
  }
}
```
