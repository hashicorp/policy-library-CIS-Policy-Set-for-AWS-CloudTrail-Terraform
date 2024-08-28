# Policy heading goes here

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | CSP category |

## Description

## Policy Results (Pass)
```bash
trace:
      policy.sentinel:72:1 - Rule "main"
        Description:
          This is a test policy

        Value:
          true

      policy.sentinel:43:1 - Rule "test_rule_exists"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      policy.sentinel:72:1 - Rule "main"
        Description:
          This is a test policy

        Value:
          false

      policy.sentinel:43:1 - Rule "test_rule_exists"
        Value:
          false
```

---