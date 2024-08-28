mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-kms-key-id-attribute-missing/mock-tfconfig-v2.sentinel"
  }
}

import "plugin" "tfresources" {
  source = "../../../plugins/darwin/arm64/sentinel-plugin-tfresources"
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}


param "verify_encryption_enabled" {
  value = true
}

test {
  rules = {
    main = false
  }
}