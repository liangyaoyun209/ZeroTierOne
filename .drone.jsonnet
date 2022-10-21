local registry = "084037375216.dkr.ecr.us-east-2.amazonaws.com";

local targets = [
      //
      // Render these into .drone.yaml by running "make drone"
      //
      { "os": "linux", "name": "el9", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "el8", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "el7", "isas": [ "amd64", "ppc64le"], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "el6", "isas": [ "amd64" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "amzn2", "isas": [ "amd64", "arm64" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "fc37", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "fc36", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "fc35", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "jammy", "isas": [ "amd64", "arm64", "riscv64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "focal", "isas": [ "amd64", "arm64", "riscv64", "ppc64le"  ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "bionic", "isas": [ "amd64", "arm64", "386", "ppc64le", "s390x" ], "events": ["tag", "custom" ] },
      { "os": "linux", "name": "xenial", "isas": [ "amd64", "arm64", "386" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "sid", "isas": [ "386", "amd64", "arm64",  "riscv64", "mips64le", "ppc64le", "s390x" ], "events":   [ "push", "tag", "custom" ] },
      { "os": "linux", "name": "bookworm", "isas": [ "amd64", "arm64", "386", "mips64le", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "bullseye", "isas": [ "amd64", "arm64", "386", "mips64le", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "buster", "isas": [ "amd64", "arm64", "386", "mips64le", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "stretch", "isas": [ "amd64", "arm64", "386" ], "events": [ "tag", "custom" ] },
      // { "os": "windows", "name": "win2k19", "isas": [ "amd64" ], "events": ["push", "tag", "custom" ] }
];

local master_targets = [
      //
      // This section exists as a handy reference.
      // Copypasta this section into "targets" as desired".
      // 
      { "os": "linux", "name": "el9", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "el8", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "el7", "isas": [ "amd64", "ppc64le"], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "el6", "isas": [ "amd64" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "amzn2", "isas": [ "amd64", "arm64" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "fc37", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "fc36", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "fc35", "isas": [ "amd64", "arm64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "jammy", "isas": [ "amd64", "arm64", "armv7", "riscv64", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "focal", "isas": [ "amd64", "arm64", "armv7", "riscv64", "ppc64le"  ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "bionic", "isas": [ "amd64", "arm64", "386", "ppc64le", "s390x" ], "events": ["tag", "custom" ] },
      { "os": "linux", "name": "xenial", "isas": [ "amd64", "arm64", "386" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "sid", "isas": [ "386", "amd64", "arm64",  "riscv64", "mips64le", "ppc64le", "s390x" ], "events": [ "push", "tag", "custom" ] },
      { "os": "linux", "name": "bookworm", "isas": [ "amd64", "arm64", "armv7", "386", "mips64le", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "bullseye", "isas": [ "amd64", "arm64", "armv7", "386", "mips64le", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "buster", "isas": [ "amd64", "arm64", "armv7", "386", "mips64le", "ppc64le", "s390x" ], "events": [ "tag", "custom" ] },
      { "os": "linux", "name": "stretch", "isas": [ "amd64", "arm64", "386" ], "events": [ "tag", "custom" ] },
      // { "os": "windows", "name": "win2k19", "isas": [ "amd64" ], "events": ["push", "tag" ] }
];

local Build(platform, os, isa, events) = {
  "kind": "pipeline",
  "type": "docker",
  "pull": "always",
  "name": platform + " " + isa + " " + "build",
  "clone": { "depth": 1 },
  "steps": [
    {
      "name": "build",
      "image": registry + "/honda-builder",
      "commands": [ "./ci/scripts/build.sh " + platform + " " + isa + " " + "100.0.0+${DRONE_COMMIT_SHA:0:8}" + " " + "${DRONE_BUILD_EVENT}" ]
    },
    {
      "name": "list",
      "image": registry + "/honda-builder",
      "commands": [ "ls -la " + platform ]
    },
    // {
    //   "name": "notify-mattermost",
    //   "image": "$(registry)/mattermost-notify",
    //   "environment": {
    //     "token": { "from_secret": "mattermost-token" },
    //     "host": { "from_secret": "mattermost-host" },
    //     "channel": { "from_secret": "mattermost-channel" },
    //     "maxRetry": 3,
    //   },
    //   "when": { "status": [ "failure" ] }
    // }
  ],  
  "image_pull_secrets": [ "dockerconfigjson" ],
  [ if isa == "arm64" || isa == "armv7" then "platform" ]: { os: os, arch: "arm64" },
  "trigger": { "event": events }
};

// puttin on the bits

std.flattenArrays([
  [
     Build(p.name, p.os, isa, p.events)
      for isa in p.isas
  ]
  for p in targets
])
