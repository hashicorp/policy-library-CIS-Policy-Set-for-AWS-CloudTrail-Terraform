mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-enable-log-file-validation-not-defined/mock-tfplan-v2.sentinel"
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


param "verify_log_file_validation_is_enabled" {
  value = true
}

test {
  rules = {
    main = false
  }
}