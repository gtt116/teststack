/*
 The example content of column "network_info" in table instance_info_caches.
*/

[
    {
        "network": {
            "bridge": "br100",
            "subnets": [
                {
                    "ips": [
                        {
                            "meta": {},
                            "version": 4,
                            "type": "fixed",
                            "floating_ips": [
                                {
                                    "meta": {},
                                    "version": 4,
                                    "type": "floating",
                                    "address": "10.120.240.60"
                                }
                            ],
                            "address": "10.120.41.15"
                        }
                    ],
                    "version": 4,
                    "meta": {
                        "dhcp_server": "10.120.40.12"
                    },
                    "dns": [
                        {
                            "meta": {},
                            "version": 4,
                            "type": "dns",
                            "address": "8.8.4.4"
                        }
                    ],
                    "routes": [],
                    "cidr": "10.120.40.0/22",
                    "gateway": {
                        "meta": {},
                        "version": 4,
                        "type": "gateway",
                        "address": "10.120.40.1"
                    }
                },
                {
                    "ips": [],
                    "version": null,
                    "meta": {
                        "dhcp_server": "10.120.40.12"
                    },
                    "dns": [],
                    "routes": [],
                    "cidr": null,
                    "gateway": {
                        "meta": {},
                        "version": null,
                        "type": "gateway",
                        "address": null
                    }
                }
            ],
            "meta": {
                "tenant_id": null,
                "multi_host": true,
                "should_create_bridge": true,
                "bridge_interface": "eth1"
            },
            "id": "c6b7cbaf-e0eb-4b1a-96dd-8f2f583f7952",
            "label": "private"
        },
        "meta": {},
        "id": "0e294ca7-b381-40b8-9fc6-ada0df827047",
        "address": "fa:16:3e:0a:a2:4a"
    }
]
