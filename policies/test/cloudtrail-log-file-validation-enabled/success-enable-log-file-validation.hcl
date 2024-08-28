mock "tfplan/v2" {
  module {
    source = "./mocks/policy-success-enable-log-file-validation/mock-tfplan-v2.sentinel"
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
    main = true
  }
}