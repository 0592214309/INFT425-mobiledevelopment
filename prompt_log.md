# PROMPT_LOG.md — Week 4: Dart Data Collections & Unit Testing

**Course:** INFT 425: Mobile Application Development

**Topic:** Dart Data Collections (Lists, Maps, Sets, Higher-Order Functions) and Unit Testing

**Environment:** DartPad & Visual Studio Code

## 1. Context & Objectives

* **Core Topics Covered:**

* **Lists & Maps:** Creation, key-value manipulation, and iteration.

* **Sets:** Set theory methods (`.union()`, `.intersection()`, `.difference()`).

* **Higher-Order Methods:** Data transformation and filtering (`.map()`, `.where()`, `.reduce()`, `.firstWhere()`).

* **Unit Testing:** Setting up unit tests using the `test` package in a standard Dart project layout.

## 2. Iterative Workflow & Debugging Log

### **Phase A: DartPad Execution (Collections & Higher-Order Functions)**

* **Action:** Executed code blocks demonstrating Lists, Maps, Sets, and higher-order iteration methods.

* **Result:** All collection transformations, filtering operations, and set comparisons ran successfully in DartPad with output verified in the console log.

### **Phase B: VS Code Project Architecture & Configuration**

* **Action:** Transitioned from DartPad to local setup in VS Code under the workspace `CALC1/`.

* **Challenge:** Facing directory alignment issues where `pubspec.yaml` and `test/` needed correct hierarchy layout.

* **Resolution:** Re-architected project hierarchy so that `lib/`, `test/`, `screenshots/`, and `pubspec.yaml` sat as direct siblings under the project root (`CALC1/`).

```
CALC1/
├── lib/
│   ├── calculator.dart
│   └── week4_testing.dart
├── test/
│   └── calculator_test.dart
├── screenshots/          <-- Added for lab screenshots
├── pubspec.yaml
└── README.md




```

### **Phase C: Dependency Management & Test Execution**

* **Challenge:** Running `dart test` failed initially due to missing metadata in `pubspec.yaml` and URI path resolutions.

* **Resolution:**

1. Updated `pubspec.yaml` with explicit metadata and the `test` dependency under `dev_dependencies`.

2. Executed `dart pub get` to download and link packages locally.

3. Re-ran `dart test` in the terminal successfully.

## 3. Terminal Execution Result

```
PS C:\Users\HP\Downloads\CALC1> dart pub get
Resolving dependencies...
+ test 1.24.9
Changed dependencies!

PS C:\Users\HP\Downloads\CALC1> dart test
Building package executable... (8.4s)
Built test:test.
00:01 +6: All tests passed!




```

## 4. Key Takeaways

1. **Directory Convention:** In Dart/Flutter, configuration files (`pubspec.yaml`) and test folders (`test/`) must sit at the project root alongside `lib/`.

2. **Package Resolution:** Adding dependencies in `pubspec.yaml` must be followed by `dart pub get` before URI imports in Dart test files can resolve properly.

3. **Automated Testing:** Grouping related test cases (`group()`) and asserting outcomes (`expect()`) ensures functional correctness across collection operations and error boundary checks.