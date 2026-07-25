//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BillingApi {
  BillingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Store a credit card on the account — may return a verification flow
  ///
  /// Stores a new credit card on the account so it can later be selected via `updateBillingPaymentMethod` or used directly with `initiatePayment` (`method=cc`). The card number has dashes stripped and is sanitized through `FILTER_SANITIZE_NUMBER_INT`; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via `App::encrypt()`. The flow may return `action='verify'` indicating a two-step micro-charge verification is required before the card is usable — complete it with `patchBillingCreditCardVerify` then `postBillingCreditCardVerify`. Sibling ops: `updateBillingCreditCard`, `deleteBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Body fields (JSON or multipart, schema `BillingAddCcRequest`):** - `cc` (string, required) — card number; dashes stripped, non-digits filtered. - `name` (string, required) — cardholder name. - `cc_exp` (string, required) — `MM/YYYY`. - `address` (string, required), `city`, `state`, `country`, `zip` (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** `{success: true, text: \"Card Added Successfully!\"}`. - **Verification needed:** `{success: false, text: \"Kindly verify your card by updating the amounts in the fields\", action: \"verify\"}` — proceed to `patchBillingCreditCardVerify`.  **Side effects:** - Inserts the encrypted card into the account's `ccs` array (managed via `parse_ccs` / `add_cc`). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - `Card number, Full Name, Expiry date are required!` — required field missing/empty. - `401` — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if `action='verify'`):** `patchBillingCreditCardVerify` (CVV + initiate micro-charge) → `postBillingCreditCardVerify` (submit amounts). - **Make it the default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. - **Pay an invoice with it:** `initiatePayment` (`method=cc`). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BillingAddCcRequest] billingAddCcRequest (required):
  Future<Response> addBillingCreditCardWithHttpInfo(BillingAddCcRequest billingAddCcRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/creditcards';

    // ignore: prefer_final_locals
    Object? postBody = billingAddCcRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Store a credit card on the account — may return a verification flow
  ///
  /// Stores a new credit card on the account so it can later be selected via `updateBillingPaymentMethod` or used directly with `initiatePayment` (`method=cc`). The card number has dashes stripped and is sanitized through `FILTER_SANITIZE_NUMBER_INT`; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via `App::encrypt()`. The flow may return `action='verify'` indicating a two-step micro-charge verification is required before the card is usable — complete it with `patchBillingCreditCardVerify` then `postBillingCreditCardVerify`. Sibling ops: `updateBillingCreditCard`, `deleteBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Body fields (JSON or multipart, schema `BillingAddCcRequest`):** - `cc` (string, required) — card number; dashes stripped, non-digits filtered. - `name` (string, required) — cardholder name. - `cc_exp` (string, required) — `MM/YYYY`. - `address` (string, required), `city`, `state`, `country`, `zip` (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** `{success: true, text: \"Card Added Successfully!\"}`. - **Verification needed:** `{success: false, text: \"Kindly verify your card by updating the amounts in the fields\", action: \"verify\"}` — proceed to `patchBillingCreditCardVerify`.  **Side effects:** - Inserts the encrypted card into the account's `ccs` array (managed via `parse_ccs` / `add_cc`). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - `Card number, Full Name, Expiry date are required!` — required field missing/empty. - `401` — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if `action='verify'`):** `patchBillingCreditCardVerify` (CVV + initiate micro-charge) → `postBillingCreditCardVerify` (submit amounts). - **Make it the default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. - **Pay an invoice with it:** `initiatePayment` (`method=cc`). 
  ///
  /// Parameters:
  ///
  /// * [BillingAddCcRequest] billingAddCcRequest (required):
  Future<SuccessTextResponse?> addBillingCreditCard(BillingAddCcRequest billingAddCcRequest, { Future<void>? abortTrigger, }) async {
    final response = await addBillingCreditCardWithHttpInfo(billingAddCcRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Create a prepay deposit and return an invoice id to fund it
  ///
  /// Creates a prepay row (`prepays` table) at the requested amount and inserts a matching `invoices` row (`Prepay ID {pid} Invoice`) that the customer must pay through `initiatePayment` before the balance becomes usable. The prepay is added with `PREPAY_TYPE_ANY` / `PREPAY_SERVICE_ANY` defaults via `add_prepay()`. Use to seed an account balance the customer can later spend via `method=prepay` at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: `getBillingPrePays`, `deleteBillingPrepay`, `getBillingInvoice`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPrepayRequest`):** - `amount` (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - `module` (string, required) — service module scope (`default` for any service, or specific like `vps`, `webhosting`). - `automatic_use` (bool, required) — when `true`, the balance auto-applies to future invoices in the scoped module.  **Returns:** `{text: \"Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\", invoice: <integer>}` — pass `invoice` to `initiatePayment` (use a real `method` like `cc` / `paypal`, not `prepay` — you can't fund a prepay with a prepay).  **Side effects:** - Inserts `prepays` row. - Inserts `invoices` row (`invoices_description = \"Prepay ID {pid} Invoice\"`, `invoices_paid=0`, `invoices_module='default'`).  **Auth:** Session/API key.  **Errors:** - `Sorry! Minimum prepay amount is $10.00` — amount below floor. - `Something went wrong! Try again or contact our support team!` — invoice insert failed. - `401` — unauthenticated.  **Related calls:** - **Confirm invoice:** `getBillingInvoice` with the returned `invoice` id. - **Pay it:** `initiatePayment` (`method=cc|paypal|...`, not `prepay`). - **Verify it's now usable:** `getBillingPrePays` (look for `prepay_remaining > 0`). - **Cancel before paying:** `deleteBillingPrepay`.  **Example happy path:** ```text POST /apiv2/billing/prepays { \"amount\": 100, \"module\": \"default\", \"automatic_use\": true } -> { \"text\": \"...\", \"invoice\": 25296701 } GET /apiv2/billing/pay/cc/25296701 -> { \"type\": \"single\", \"text\": \"Payment processed.\" } GET /apiv2/billing/prepays -> [{ \"prepay_id\": 99, \"prepay_remaining\": 100, ... }] ``` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BillingPrepayRequest] billingPrepayRequest (required):
  Future<Response> addBillingPrepayWithHttpInfo(BillingPrepayRequest billingPrepayRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/prepays';

    // ignore: prefer_final_locals
    Object? postBody = billingPrepayRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Create a prepay deposit and return an invoice id to fund it
  ///
  /// Creates a prepay row (`prepays` table) at the requested amount and inserts a matching `invoices` row (`Prepay ID {pid} Invoice`) that the customer must pay through `initiatePayment` before the balance becomes usable. The prepay is added with `PREPAY_TYPE_ANY` / `PREPAY_SERVICE_ANY` defaults via `add_prepay()`. Use to seed an account balance the customer can later spend via `method=prepay` at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: `getBillingPrePays`, `deleteBillingPrepay`, `getBillingInvoice`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPrepayRequest`):** - `amount` (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - `module` (string, required) — service module scope (`default` for any service, or specific like `vps`, `webhosting`). - `automatic_use` (bool, required) — when `true`, the balance auto-applies to future invoices in the scoped module.  **Returns:** `{text: \"Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\", invoice: <integer>}` — pass `invoice` to `initiatePayment` (use a real `method` like `cc` / `paypal`, not `prepay` — you can't fund a prepay with a prepay).  **Side effects:** - Inserts `prepays` row. - Inserts `invoices` row (`invoices_description = \"Prepay ID {pid} Invoice\"`, `invoices_paid=0`, `invoices_module='default'`).  **Auth:** Session/API key.  **Errors:** - `Sorry! Minimum prepay amount is $10.00` — amount below floor. - `Something went wrong! Try again or contact our support team!` — invoice insert failed. - `401` — unauthenticated.  **Related calls:** - **Confirm invoice:** `getBillingInvoice` with the returned `invoice` id. - **Pay it:** `initiatePayment` (`method=cc|paypal|...`, not `prepay`). - **Verify it's now usable:** `getBillingPrePays` (look for `prepay_remaining > 0`). - **Cancel before paying:** `deleteBillingPrepay`.  **Example happy path:** ```text POST /apiv2/billing/prepays { \"amount\": 100, \"module\": \"default\", \"automatic_use\": true } -> { \"text\": \"...\", \"invoice\": 25296701 } GET /apiv2/billing/pay/cc/25296701 -> { \"type\": \"single\", \"text\": \"Payment processed.\" } GET /apiv2/billing/prepays -> [{ \"prepay_id\": 99, \"prepay_remaining\": 100, ... }] ``` 
  ///
  /// Parameters:
  ///
  /// * [BillingPrepayRequest] billingPrepayRequest (required):
  Future<SuccessTextResponse?> addBillingPrepay(BillingPrepayRequest billingPrepayRequest, { Future<void>? abortTrigger, }) async {
    final response = await addBillingPrepayWithHttpInfo(billingPrepayRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Remove a stored credit card from the account
  ///
  /// Removes the indexed credit card from the account's `ccs` collection. If the deleted card was also the account's primary `cc`, the primary field is cleared — `initiatePayment` (`method=cc`) will then return an error until a new default is designated via `updateBillingPaymentMethod`. **Irreversible** — to re-store the same card, re-run `addBillingCreditCard`. Sibling ops: `addBillingCreditCard`, `updateBillingCreditCard`, `updateBillingPaymentMethod`, `getBillingCreditCardVerify`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body:** None.  **Returns:** `Card removed successfully.`.  **Side effects:** - Removes the entry from the `ccs` array; re-serialized via `myadmin_stringify`. - When the deleted card was primary: clears account-level `cc`.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `401` — unauthenticated.  **Related calls:** - **Set a new default:** `updateBillingPaymentMethod`. - **Add a replacement:** `addBillingCreditCard`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID to remove. Use IDs from `GET /billing/creditcards`.
  Future<Response> deleteBillingCreditCardWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/creditcards/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Remove a stored credit card from the account
  ///
  /// Removes the indexed credit card from the account's `ccs` collection. If the deleted card was also the account's primary `cc`, the primary field is cleared — `initiatePayment` (`method=cc`) will then return an error until a new default is designated via `updateBillingPaymentMethod`. **Irreversible** — to re-store the same card, re-run `addBillingCreditCard`. Sibling ops: `addBillingCreditCard`, `updateBillingCreditCard`, `updateBillingPaymentMethod`, `getBillingCreditCardVerify`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body:** None.  **Returns:** `Card removed successfully.`.  **Side effects:** - Removes the entry from the `ccs` array; re-serialized via `myadmin_stringify`. - When the deleted card was primary: clears account-level `cc`.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `401` — unauthenticated.  **Related calls:** - **Set a new default:** `updateBillingPaymentMethod`. - **Add a replacement:** `addBillingCreditCard`. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID to remove. Use IDs from `GET /billing/creditcards`.
  Future<SuccessTextResponse?> deleteBillingCreditCard(int id, { Future<void>? abortTrigger, }) async {
    final response = await deleteBillingCreditCardWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Cancel a pending unpaid invoice — and its pending service or repeat invoice
  ///
  /// Cancels an unpaid invoice and cleans up the records it represents. Behavior depends on what the invoice funds: a **prepay** invoice is routed to `deleteBillingPrepay`; an **initial service charge** (where `repeat_invoices_id` matches the service's `_invoice` field) deletes the `repeat_invoices` row, all child `invoices`, AND the pending service row from the module's table; an **addon/recurring** invoice just deletes that one `invoices` row plus its `repeat_invoices` row. **Only invoices for services in `pending` status can be deleted** — once provisioned, the service must be cancelled via the per-service Cancel endpoint instead. **Irreversible**. Sibling ops: `getBillingInvoice`, `deleteBillingPrepay`, `VPSCancel` / `CancelDomain` / `mailCancel` / `webhostingCancel` / etc.  **Path param:** - `id` (integer, required) — invoice id (`invoices_type=1`, ownership enforced via `invoices_custid`).  **Body:** None.  **Returns:** `Invoice Deleted` text.  **Side effects:** (depends on invoice type) - **Prepay invoice** (description matches `Prepay ID N Invoice`) — delegates to `deleteBillingPrepay($pid)`. - **Initial service invoice** (`repeat_invoices_id == service._invoice`) — deletes:   - the `repeat_invoices` row,   - every `invoices` row for that service,   - the service row in `{settings['TABLE']}`. - **Addon/recurring invoice** — deletes only the matching `repeat_invoices` row and the single `invoices` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `Invalid invoice` — `id` not found or wrong owner. - `Invalid service` — invoice references a service that no longer exists. - `Can only delete invoices for pending services or prepays` — service is `active`/`suspended`/`cancelled`. - `401` — unauthenticated.  **Related calls:** - **List candidates:** `getBillingInvoices`. - **Detail first:** `getBillingInvoice`. - **For active services:** `VPSCancel`, `CancelDomain`, `mailCancel`, `webhostingCancel`, `licensesCancel`, `sslCancel`, `cancelScrubIp`, `floating_ipsCancel`, `cancelBackup`, `quickserversCancel`, `serversCancel` — these use `Billing\\CancelService::go()`. - **For prepay invoices:** `deleteBillingPrepay` (delegated automatically). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The invoice ID to delete. Only unpaid invoices can be deleted.
  Future<Response> deleteBillingInvoiceWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/invoices/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Cancel a pending unpaid invoice — and its pending service or repeat invoice
  ///
  /// Cancels an unpaid invoice and cleans up the records it represents. Behavior depends on what the invoice funds: a **prepay** invoice is routed to `deleteBillingPrepay`; an **initial service charge** (where `repeat_invoices_id` matches the service's `_invoice` field) deletes the `repeat_invoices` row, all child `invoices`, AND the pending service row from the module's table; an **addon/recurring** invoice just deletes that one `invoices` row plus its `repeat_invoices` row. **Only invoices for services in `pending` status can be deleted** — once provisioned, the service must be cancelled via the per-service Cancel endpoint instead. **Irreversible**. Sibling ops: `getBillingInvoice`, `deleteBillingPrepay`, `VPSCancel` / `CancelDomain` / `mailCancel` / `webhostingCancel` / etc.  **Path param:** - `id` (integer, required) — invoice id (`invoices_type=1`, ownership enforced via `invoices_custid`).  **Body:** None.  **Returns:** `Invoice Deleted` text.  **Side effects:** (depends on invoice type) - **Prepay invoice** (description matches `Prepay ID N Invoice`) — delegates to `deleteBillingPrepay($pid)`. - **Initial service invoice** (`repeat_invoices_id == service._invoice`) — deletes:   - the `repeat_invoices` row,   - every `invoices` row for that service,   - the service row in `{settings['TABLE']}`. - **Addon/recurring invoice** — deletes only the matching `repeat_invoices` row and the single `invoices` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `Invalid invoice` — `id` not found or wrong owner. - `Invalid service` — invoice references a service that no longer exists. - `Can only delete invoices for pending services or prepays` — service is `active`/`suspended`/`cancelled`. - `401` — unauthenticated.  **Related calls:** - **List candidates:** `getBillingInvoices`. - **Detail first:** `getBillingInvoice`. - **For active services:** `VPSCancel`, `CancelDomain`, `mailCancel`, `webhostingCancel`, `licensesCancel`, `sslCancel`, `cancelScrubIp`, `floating_ipsCancel`, `cancelBackup`, `quickserversCancel`, `serversCancel` — these use `Billing\\CancelService::go()`. - **For prepay invoices:** `deleteBillingPrepay` (delegated automatically). 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The invoice ID to delete. Only unpaid invoices can be deleted.
  Future<SuccessTextResponse?> deleteBillingInvoice(int id, { Future<void>? abortTrigger, }) async {
    final response = await deleteBillingInvoiceWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Delete an unfunded prepay or strip its unpaid funding invoices
  ///
  /// Removes a prepay from the account, with one safety rule: a prepay that still has usable credit (`prepay_remaining > $0.01`) cannot be deleted *unless* it also has unpaid funding invoices we can clean up — in which case those unpaid `invoices` rows are deleted and the prepay row stays. Use to back out a never-funded prepay, or to surface stuck unpaid funding invoices. **Irreversible** — funded credit is unrecoverable through this endpoint. Sibling ops: `getBillingPrePays`, `addBillingPrepay`, `deleteBillingInvoice`.  **Path param:** - `id` (integer, required) — prepay id from `getBillingPrePays.prepay_id`.  **Body:** None.  **Returns:** - When unpaid funding invoices were stripped but prepay still has funds: `\"PrePay {id} Unpaid Invoices Deleted\"`. - When the prepay row was deleted: `\"PrePay {id} deleted.\"`.  **Side effects:** - Deletes any unpaid `invoices` rows matching `invoices_description = \"Prepay ID {id} Invoice\"` and `invoices_paid=0`. - Deletes the `prepays` row when remaining balance ≤ $0.01.  **Auth:** Session/API key.  **Errors:** - `Invalid Prepay` — `id` not found. - `That prepay still hands funds available on it` — funds remain AND no unpaid invoices to clean up. - `There was an error deleting the prepay, please contact support` — delete affected 0 rows. - `401` — unauthenticated.  **Related calls:** - **List first:** `getBillingPrePays`. - **Re-add later:** `addBillingPrepay`. - **Cancel a specific funding invoice:** `deleteBillingInvoice` (routes prepay invoices here automatically). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The prepay balance ID to delete.
  Future<Response> deleteBillingPrepayWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/prepays/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Delete an unfunded prepay or strip its unpaid funding invoices
  ///
  /// Removes a prepay from the account, with one safety rule: a prepay that still has usable credit (`prepay_remaining > $0.01`) cannot be deleted *unless* it also has unpaid funding invoices we can clean up — in which case those unpaid `invoices` rows are deleted and the prepay row stays. Use to back out a never-funded prepay, or to surface stuck unpaid funding invoices. **Irreversible** — funded credit is unrecoverable through this endpoint. Sibling ops: `getBillingPrePays`, `addBillingPrepay`, `deleteBillingInvoice`.  **Path param:** - `id` (integer, required) — prepay id from `getBillingPrePays.prepay_id`.  **Body:** None.  **Returns:** - When unpaid funding invoices were stripped but prepay still has funds: `\"PrePay {id} Unpaid Invoices Deleted\"`. - When the prepay row was deleted: `\"PrePay {id} deleted.\"`.  **Side effects:** - Deletes any unpaid `invoices` rows matching `invoices_description = \"Prepay ID {id} Invoice\"` and `invoices_paid=0`. - Deletes the `prepays` row when remaining balance ≤ $0.01.  **Auth:** Session/API key.  **Errors:** - `Invalid Prepay` — `id` not found. - `That prepay still hands funds available on it` — funds remain AND no unpaid invoices to clean up. - `There was an error deleting the prepay, please contact support` — delete affected 0 rows. - `401` — unauthenticated.  **Related calls:** - **List first:** `getBillingPrePays`. - **Re-add later:** `addBillingPrepay`. - **Cancel a specific funding invoice:** `deleteBillingInvoice` (routes prepay invoices here automatically). 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The prepay balance ID to delete.
  Future<SuccessTextResponse?> deleteBillingPrepay(int id, { Future<void>? abortTrigger, }) async {
    final response = await deleteBillingPrepayWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// List affiliate banner image assets with filename and dimensions
  ///
  /// Returns the catalog of pre-built banner images affiliates can embed on partner sites — same catalog for every account (not per-affiliate). Use to render a creative-asset picker in the affiliate dashboard. Each row carries the image filename and dimensions so the client can build correctly-sized `<img>` tags. Read-only. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateWebTraffic`, `getAffiliateSignups`, `updateAffiliateDockSetup`.  **Path/Query/Body:** None.  **Returns:** Array of `AffiliateBannerRow`: - `image` (string) — filename (e.g. `12946798.gif`); served from the affiliate asset bucket. - `width` (string) — pixels. - `height` (string) — pixels.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAffiliateBannersWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/banners';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List affiliate banner image assets with filename and dimensions
  ///
  /// Returns the catalog of pre-built banner images affiliates can embed on partner sites — same catalog for every account (not per-affiliate). Use to render a creative-asset picker in the affiliate dashboard. Each row carries the image filename and dimensions so the client can build correctly-sized `<img>` tags. Read-only. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateWebTraffic`, `getAffiliateSignups`, `updateAffiliateDockSetup`.  **Path/Query/Body:** None.  **Returns:** Array of `AffiliateBannerRow`: - `image` (string) — filename (e.g. `12946798.gif`); served from the affiliate asset bucket. - `width` (string) — pixels. - `height` (string) — pixels.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  Future<List<AffiliateBannerRow>?> getAffiliateBanners({ Future<void>? abortTrigger, }) async {
    final response = await getAffiliateBannersWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AffiliateBannerRow>') as List)
        .cast<AffiliateBannerRow>()
        .toList(growable: false);

    }
    return null;
  }

  /// Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
  ///
  /// Exports the affiliate signup report as a downloadable file in the requested format. Use for accounting, tax filings, or sharing reports outside the dashboard. **Response is a binary stream, not JSON** — the handler emits the file body with matching `Content-Type` + `Content-Disposition: attachment` headers and `exit()`s the request immediately. Consumers must read the raw response body. Sibling ops: `getAffiliateRichReport`, `getAffiliateSignups`, `getAffiliateSalesGraph`.  **Query params:** - `ex` (string, optional, enum `csv`/`xls`/`xlsx`/`pdf`, default `csv`) — export format. - `st` (string, optional, default `default`) — status filter (same as `getAffiliateSignups`). - `year` (integer, optional, default current year) — report scope.  **Returns:** File download with format-appropriate Content-Type: - `csv` → `text/csv`, filename `Interserver_Affiliates.csv`. - `xls` / `xlsx` → `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`, filename `Interserver_Affiliates.<ext>`. - `pdf` → `application/pdf`, filename `Interserver_Affiliates.pdf`.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] st:
  ///   Filter by status.
  ///
  /// * [String] ex:
  ///   Export format: csv, xls, xlsx, or pdf. Defaults to csv.
  ///
  /// * [int] year:
  ///   Year to filter the report. Defaults to the current year.
  Future<Response> getAffiliateDownloadWithHttpInfo({ String? st, String? ex, int? year, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/download';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (st != null) {
      queryParams.addAll(_queryParams('', 'st', st));
    }
    if (ex != null) {
      queryParams.addAll(_queryParams('', 'ex', ex));
    }
    if (year != null) {
      queryParams.addAll(_queryParams('', 'year', year));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
  ///
  /// Exports the affiliate signup report as a downloadable file in the requested format. Use for accounting, tax filings, or sharing reports outside the dashboard. **Response is a binary stream, not JSON** — the handler emits the file body with matching `Content-Type` + `Content-Disposition: attachment` headers and `exit()`s the request immediately. Consumers must read the raw response body. Sibling ops: `getAffiliateRichReport`, `getAffiliateSignups`, `getAffiliateSalesGraph`.  **Query params:** - `ex` (string, optional, enum `csv`/`xls`/`xlsx`/`pdf`, default `csv`) — export format. - `st` (string, optional, default `default`) — status filter (same as `getAffiliateSignups`). - `year` (integer, optional, default current year) — report scope.  **Returns:** File download with format-appropriate Content-Type: - `csv` → `text/csv`, filename `Interserver_Affiliates.csv`. - `xls` / `xlsx` → `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`, filename `Interserver_Affiliates.<ext>`. - `pdf` → `application/pdf`, filename `Interserver_Affiliates.pdf`.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] st:
  ///   Filter by status.
  ///
  /// * [String] ex:
  ///   Export format: csv, xls, xlsx, or pdf. Defaults to csv.
  ///
  /// * [int] year:
  ///   Year to filter the report. Defaults to the current year.
  Future<void> getAffiliateDownload({ String? st, String? ex, int? year, Future<void>? abortTrigger, }) async {
    final response = await getAffiliateDownloadWithHttpInfo(st: st, ex: ex, year: year, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Read a combined affiliate performance summary (HTML payload)
  ///
  /// Returns a server-rendered HTML/text summary report combining commission totals, conversion rates, and traffic in one round-trip — useful for embedding in a dashboard panel. The payload is **not structured JSON** — for chart-friendly data use `getAffiliateSalesGraph` and `getAffiliateTrafficGraph` instead. Backed by `affiliate_summary_report()`. Sibling ops: `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateDownload`, `getAffiliateWebTraffic`.  **Path/Query/Body:** None.  **Returns:** `{text: \"<html-or-plain-text-report>\"}`.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Structured time series:** `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`. - **Per-signup detail:** `getAffiliateSignups`. - **CSV/XLSX export:** `getAffiliateDownload`. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAffiliateRichReportWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/rich_report';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Read a combined affiliate performance summary (HTML payload)
  ///
  /// Returns a server-rendered HTML/text summary report combining commission totals, conversion rates, and traffic in one round-trip — useful for embedding in a dashboard panel. The payload is **not structured JSON** — for chart-friendly data use `getAffiliateSalesGraph` and `getAffiliateTrafficGraph` instead. Backed by `affiliate_summary_report()`. Sibling ops: `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateDownload`, `getAffiliateWebTraffic`.  **Path/Query/Body:** None.  **Returns:** `{text: \"<html-or-plain-text-report>\"}`.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Structured time series:** `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`. - **Per-signup detail:** `getAffiliateSignups`. - **CSV/XLSX export:** `getAffiliateDownload`. 
  Future<TextResponse?> getAffiliateRichReport({ Future<void>? abortTrigger, }) async {
    final response = await getAffiliateRichReportWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TextResponse',) as TextResponse;
    
    }
    return null;
  }

  /// Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
  ///
  /// Returns aggregated sales time-series data — monthly buckets with sale counts/totals — for the requested look-back window. Use to render a sales trend chart in the affiliate dashboard. Bucket granularity is fixed at monthly by `sales_graph_lte_data`; increasing `days` extends the window, it does not change bucket size. Sibling ops: `getAffiliateTrafficGraph` (clicks), `getAffiliateRichReport` (combined summary), `getAffiliateSignups`, `getAffiliateDownload`.  **Query params:** - `days` (integer, optional, default `365`) — look-back window in days.  **Returns:** `StatusMonthlyBreakdown` — buckets keyed by month with aggregated sale counts and amounts.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] days:
  ///   Number of days of sales history to include in the graph data. Determines the time window for the returned data points.
  Future<Response> getAffiliateSalesGraphWithHttpInfo({ int? days, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/sales_graph';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
  ///
  /// Returns aggregated sales time-series data — monthly buckets with sale counts/totals — for the requested look-back window. Use to render a sales trend chart in the affiliate dashboard. Bucket granularity is fixed at monthly by `sales_graph_lte_data`; increasing `days` extends the window, it does not change bucket size. Sibling ops: `getAffiliateTrafficGraph` (clicks), `getAffiliateRichReport` (combined summary), `getAffiliateSignups`, `getAffiliateDownload`.  **Query params:** - `days` (integer, optional, default `365`) — look-back window in days.  **Returns:** `StatusMonthlyBreakdown` — buckets keyed by month with aggregated sale counts and amounts.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Parameters:
  ///
  /// * [int] days:
  ///   Number of days of sales history to include in the graph data. Determines the time window for the returned data points.
  Future<StatusMonthlyBreakdown?> getAffiliateSalesGraph({ int? days, Future<void>? abortTrigger, }) async {
    final response = await getAffiliateSalesGraphWithHttpInfo(days: days, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StatusMonthlyBreakdown',) as StatusMonthlyBreakdown;
    
    }
    return null;
  }

  /// Read affiliate signup stats and per-customer conversion data
  ///
  /// Returns referred-customer signup statistics with optional status filtering — counts, conversion data, and per-customer detail produced by `affiliates_clientside()`. The inner `data` shape varies by status filter; pass `default` for the full dataset. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateDownload`.  **Query params:** - `st` (string, optional, default `default`) — status filter. `default` returns all; other values narrow the results to that status.  **Returns:** `{data: <object>}` — signup counts, conversions, per-customer detail (shape depends on `st`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] st:
  ///   Filter signups by status. Use `default` to show all or pass a specific status value to narrow results.
  Future<Response> getAffiliateSignupsWithHttpInfo({ String? st, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/signups';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (st != null) {
      queryParams.addAll(_queryParams('', 'st', st));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Read affiliate signup stats and per-customer conversion data
  ///
  /// Returns referred-customer signup statistics with optional status filtering — counts, conversion data, and per-customer detail produced by `affiliates_clientside()`. The inner `data` shape varies by status filter; pass `default` for the full dataset. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateDownload`.  **Query params:** - `st` (string, optional, default `default`) — status filter. `default` returns all; other values narrow the results to that status.  **Returns:** `{data: <object>}` — signup counts, conversions, per-customer detail (shape depends on `st`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] st:
  ///   Filter signups by status. Use `default` to show all or pass a specific status value to narrow results.
  Future<GetAffiliateSignups200Response?> getAffiliateSignups({ String? st, Future<void>? abortTrigger, }) async {
    final response = await getAffiliateSignupsWithHttpInfo(st: st, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAffiliateSignups200Response',) as GetAffiliateSignups200Response;
    
    }
    return null;
  }

  /// Read aggregated affiliate referral click/visit time-series for chart rendering
  ///
  /// Returns aggregated click/visit time-series data from the `affiliate_traffic` table — monthly buckets with visit counts — for the requested look-back window. Pair with `getAffiliateSalesGraph` to compute click-to-sale conversion ratios client-side. Sibling ops: `getAffiliateSalesGraph` (sales), `getAffiliateWebTraffic` (raw per-visit log entries), `getAffiliateRichReport`.  **Query params:** - `days` (integer, optional, default `180`) — look-back window in days.  **Returns:** `MonthlyCounts` — buckets keyed by month with aggregated visit counts.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] days:
  ///   Number of days of traffic history to include in the graph data. Determines the time window for the returned data points.
  Future<Response> getAffiliateTrafficGraphWithHttpInfo({ int? days, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/traffic_graph';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Read aggregated affiliate referral click/visit time-series for chart rendering
  ///
  /// Returns aggregated click/visit time-series data from the `affiliate_traffic` table — monthly buckets with visit counts — for the requested look-back window. Pair with `getAffiliateSalesGraph` to compute click-to-sale conversion ratios client-side. Sibling ops: `getAffiliateSalesGraph` (sales), `getAffiliateWebTraffic` (raw per-visit log entries), `getAffiliateRichReport`.  **Query params:** - `days` (integer, optional, default `180`) — look-back window in days.  **Returns:** `MonthlyCounts` — buckets keyed by month with aggregated visit counts.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Parameters:
  ///
  /// * [int] days:
  ///   Number of days of traffic history to include in the graph data. Determines the time window for the returned data points.
  Future<MonthlyCounts?> getAffiliateTrafficGraph({ int? days, Future<void>? abortTrigger, }) async {
    final response = await getAffiliateTrafficGraphWithHttpInfo(days: days, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MonthlyCounts',) as MonthlyCounts;
    
    }
    return null;
  }

  /// List the 20 most recent affiliate referral visits with IP, referrer, timestamp
  ///
  /// Returns the 20 most recent raw referral visits from the `affiliate_traffic` table — visitor IP, full referral URL, and timestamp per row. Use to audit traffic sources, identify top referrers, or investigate suspicious click patterns. Hard-coded limit 20 (no pagination); for longer-term analysis use `getAffiliateTrafficGraph` or export via `getAffiliateDownload`. Sibling ops: `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateRichReport`, `getAffiliateDownload`.  **Path/Query/Body:** None.  **Returns:** Array of `AffiliateTrafficRow`: - `traffic_id` (string) — row id (most-recent-first). - `traffic_ip` (string) — visitor IP (IPv4 or IPv6). - `traffic_url` (string) — referral landing URL. - `traffic_affiliate` (string) — affiliate (= session `account_id`). - `traffic_referrer` (string) — HTTP Referer (may be empty). - `traffic_timestamp` (string) — `YYYY-MM-DD HH:MM:SS` in account timezone.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAffiliateWebTrafficWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/web_traffic';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List the 20 most recent affiliate referral visits with IP, referrer, timestamp
  ///
  /// Returns the 20 most recent raw referral visits from the `affiliate_traffic` table — visitor IP, full referral URL, and timestamp per row. Use to audit traffic sources, identify top referrers, or investigate suspicious click patterns. Hard-coded limit 20 (no pagination); for longer-term analysis use `getAffiliateTrafficGraph` or export via `getAffiliateDownload`. Sibling ops: `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateRichReport`, `getAffiliateDownload`.  **Path/Query/Body:** None.  **Returns:** Array of `AffiliateTrafficRow`: - `traffic_id` (string) — row id (most-recent-first). - `traffic_ip` (string) — visitor IP (IPv4 or IPv6). - `traffic_url` (string) — referral landing URL. - `traffic_affiliate` (string) — affiliate (= session `account_id`). - `traffic_referrer` (string) — HTTP Referer (may be empty). - `traffic_timestamp` (string) — `YYYY-MM-DD HH:MM:SS` in account timezone.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 
  Future<List<AffiliateTrafficRow>?> getAffiliateWebTraffic({ Future<void>? abortTrigger, }) async {
    final response = await getAffiliateWebTrafficWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AffiliateTrafficRow>') as List)
        .cast<AffiliateTrafficRow>()
        .toList(growable: false);

    }
    return null;
  }

  /// Read the current shopping cart contents, totals, and available payment methods
  ///
  /// Returns the customer's checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling `initiatePayment`. Backed by the `cart` helper module; `modules_json` and `csrf_token` are stripped from the response. Read-only. Sibling ops: `getBillingInvoices` (raw list), `getBillingInvoice` (one invoice in detail), `initiatePayment` (pay), `getBillingPrePays` (check prepay balance first).  **Path/Query/Body:** None.  **Returns:** A cart object with: - Line items aggregated from unpaid `invoices` rows for the session account. - Currency-normalized subtotal / total. - Available payment methods (filtered by feature flags, account country, and which gateways are enabled): `cc`, `paypal`, `btcpay`, `coinbase`, `payu`, `ccavenue`, `cashfree`, `payssion`, `prepay`. - Per-invoice description, module, service-id, amount.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **List unpaid invoices directly:** `getBillingInvoices`. - **Drill into one invoice:** `getBillingInvoice`. - **Pay:** `initiatePayment` (use the cart's invoice ids or the `SERVICEvpsN` / `INVvpsN` tag forms). - **Top up prepay first:** `getBillingPrePays`, `addBillingPrepay`. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingCartWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/cart';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Read the current shopping cart contents, totals, and available payment methods
  ///
  /// Returns the customer's checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling `initiatePayment`. Backed by the `cart` helper module; `modules_json` and `csrf_token` are stripped from the response. Read-only. Sibling ops: `getBillingInvoices` (raw list), `getBillingInvoice` (one invoice in detail), `initiatePayment` (pay), `getBillingPrePays` (check prepay balance first).  **Path/Query/Body:** None.  **Returns:** A cart object with: - Line items aggregated from unpaid `invoices` rows for the session account. - Currency-normalized subtotal / total. - Available payment methods (filtered by feature flags, account country, and which gateways are enabled): `cc`, `paypal`, `btcpay`, `coinbase`, `payu`, `ccavenue`, `cashfree`, `payssion`, `prepay`. - Per-invoice description, module, service-id, amount.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **List unpaid invoices directly:** `getBillingInvoices`. - **Drill into one invoice:** `getBillingInvoice`. - **Pay:** `initiatePayment` (use the cart's invoice ids or the `SERVICEvpsN` / `INVvpsN` tag forms). - **Top up prepay first:** `getBillingPrePays`, `addBillingPrepay`. 
  Future<Object?> getBillingCart({ Future<void>? abortTrigger, }) async {
    final response = await getBillingCartWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Probe whether a stored card still needs micro-charge verification
  ///
  /// Status probe for the credit-card verification flow. Read-only — current implementation returns a placeholder string indicating verification is pending; the actual two-step verification happens via `patchBillingCreditCardVerify` (initiate dual micro-charge with CVV) followed by `postBillingCreditCardVerify` (submit the charged amounts). Use to drive the UI's \"verify card\" form rendering. Sibling ops: `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body:** None.  **Returns:** `Verification requirements` (placeholder text — reserved for future structured response with `requires_cvv` / `requires_amounts` flags).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Step 1 of verify flow:** `patchBillingCreditCardVerify`. - **Step 2 of verify flow:** `postBillingCreditCardVerify`. - **Add a new card:** `addBillingCreditCard`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.
  Future<Response> getBillingCreditCardVerifyWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/creditcards/{id}/verify'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Probe whether a stored card still needs micro-charge verification
  ///
  /// Status probe for the credit-card verification flow. Read-only — current implementation returns a placeholder string indicating verification is pending; the actual two-step verification happens via `patchBillingCreditCardVerify` (initiate dual micro-charge with CVV) followed by `postBillingCreditCardVerify` (submit the charged amounts). Use to drive the UI's \"verify card\" form rendering. Sibling ops: `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body:** None.  **Returns:** `Verification requirements` (placeholder text — reserved for future structured response with `requires_cvv` / `requires_amounts` flags).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Step 1 of verify flow:** `patchBillingCreditCardVerify`. - **Step 2 of verify flow:** `postBillingCreditCardVerify`. - **Add a new card:** `addBillingCreditCard`. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.
  Future<SuccessTextResponse?> getBillingCreditCardVerify(int id, { Future<void>? abortTrigger, }) async {
    final response = await getBillingCreditCardVerifyWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Read full invoice detail — line items, totals, paid status, customer info
  ///
  /// Returns the full rendered invoice payload for a single invoice — backed by `get_invoice_data()`, the same helper that builds the email-style invoice document. Use to confirm the exact balance due and the invoice description before calling `initiatePayment`, or to render an invoice viewer page. Read-only. The response is an email-style/HTML payload (not a structured line-item array) — for a structured cart-style summary use `getBillingCart`. The response includes a Link to `deleteBillingInvoice` for unpaid pending-service invoices. Sibling ops: `getBillingInvoices`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, per-service `getVpsInvoices` / `getMailInvoices` / etc.  **Path param:** - `id` (integer, required) — invoice id from `getBillingInvoices.rows[].id`, from an order endpoint's response (e.g. `addVps.iid`), or from a per-service invoice list.  **Body:** None.  **Returns:** `BillingInvoiceDetail` — full rendered invoice payload (email body) with line items, totals, customer/billing info, and paid status. The exact shape mirrors what gets sent to the customer.  **Auth:** Session/API key. Ownership enforced through the invoice's `invoices_custid`.  **Errors:** - `Invalid Invoice` — `id` not found or owned by another account. - `401` — unauthenticated.  **Related calls:** - **Pay it:** `initiatePayment` (`/billing/pay/{method}/{id}`). - **Delete if pending/unpaid:** `deleteBillingInvoice`. - **List all:** `getBillingInvoices`. - **Cart-style summary across all unpaid:** `getBillingCart`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The invoice ID. Use IDs from `GET /billing/invoices` or from order responses.
  Future<Response> getBillingInvoiceWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/invoices/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Read full invoice detail — line items, totals, paid status, customer info
  ///
  /// Returns the full rendered invoice payload for a single invoice — backed by `get_invoice_data()`, the same helper that builds the email-style invoice document. Use to confirm the exact balance due and the invoice description before calling `initiatePayment`, or to render an invoice viewer page. Read-only. The response is an email-style/HTML payload (not a structured line-item array) — for a structured cart-style summary use `getBillingCart`. The response includes a Link to `deleteBillingInvoice` for unpaid pending-service invoices. Sibling ops: `getBillingInvoices`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, per-service `getVpsInvoices` / `getMailInvoices` / etc.  **Path param:** - `id` (integer, required) — invoice id from `getBillingInvoices.rows[].id`, from an order endpoint's response (e.g. `addVps.iid`), or from a per-service invoice list.  **Body:** None.  **Returns:** `BillingInvoiceDetail` — full rendered invoice payload (email body) with line items, totals, customer/billing info, and paid status. The exact shape mirrors what gets sent to the customer.  **Auth:** Session/API key. Ownership enforced through the invoice's `invoices_custid`.  **Errors:** - `Invalid Invoice` — `id` not found or owned by another account. - `401` — unauthenticated.  **Related calls:** - **Pay it:** `initiatePayment` (`/billing/pay/{method}/{id}`). - **Delete if pending/unpaid:** `deleteBillingInvoice`. - **List all:** `getBillingInvoices`. - **Cart-style summary across all unpaid:** `getBillingCart`. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The invoice ID. Use IDs from `GET /billing/invoices` or from order responses.
  Future<BillingInvoiceDetail?> getBillingInvoice(int id, { Future<void>? abortTrigger, }) async {
    final response = await getBillingInvoiceWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BillingInvoiceDetail',) as BillingInvoiceDetail;
    
    }
    return null;
  }

  /// List every invoice on the account with summary totals and paid/unpaid status
  ///
  /// Returns the customer's complete invoice ledger — every charge, paid or unpaid, across every service module. Use to render a billing-history page, find an unpaid invoice id to pass to `initiatePayment`, or audit recent activity. Server-side strips the first synthetic header row from `get_view_invoices()` and reindexes the array. Read-only. The response includes a Link to `getBillingInvoice` for drilling into any row. Sibling ops: `getBillingInvoice`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, `getBillingPrePays`.  **Path/Query/Body:** None.  **Returns:** `BillingInvoiceList` — object containing: - `rows` (array) — per-invoice summaries: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `module`, `service` (service-id within the module), `currency`. - Aggregate totals across the array (totals object: `total`, `paid_total`, `unpaid_total`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Drill into one invoice:** `getBillingInvoice`. - **Pay an unpaid invoice:** `initiatePayment`. - **Cancel an unpaid pending-service invoice:** `deleteBillingInvoice` (only works on pending services / unpaid prepays). - **Per-service invoices instead:** `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`, `getBackupInvoices`, etc. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingInvoicesWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/invoices';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List every invoice on the account with summary totals and paid/unpaid status
  ///
  /// Returns the customer's complete invoice ledger — every charge, paid or unpaid, across every service module. Use to render a billing-history page, find an unpaid invoice id to pass to `initiatePayment`, or audit recent activity. Server-side strips the first synthetic header row from `get_view_invoices()` and reindexes the array. Read-only. The response includes a Link to `getBillingInvoice` for drilling into any row. Sibling ops: `getBillingInvoice`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, `getBillingPrePays`.  **Path/Query/Body:** None.  **Returns:** `BillingInvoiceList` — object containing: - `rows` (array) — per-invoice summaries: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `module`, `service` (service-id within the module), `currency`. - Aggregate totals across the array (totals object: `total`, `paid_total`, `unpaid_total`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Drill into one invoice:** `getBillingInvoice`. - **Pay an unpaid invoice:** `initiatePayment`. - **Cancel an unpaid pending-service invoice:** `deleteBillingInvoice` (only works on pending services / unpaid prepays). - **Per-service invoices instead:** `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`, `getBackupInvoices`, etc. 
  Future<BillingInvoiceList?> getBillingInvoices({ Future<void>? abortTrigger, }) async {
    final response = await getBillingInvoicesWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BillingInvoiceList',) as BillingInvoiceList;
    
    }
    return null;
  }

  /// List prepay deposits on the account — remaining balance and auto-use flags
  ///
  /// Returns every prepay deposit on the account — funded or pending — with remaining balances, modules they're scoped to, and the `automatic_use` flag controlling whether the balance auto-applies to future invoices. Use to gate `method=prepay` at checkout (a prepay must be funded to count toward payment) or to render a prepays management page. Read-only. `csrf_token` is stripped from the helper output. Sibling ops: `addBillingPrepay` (top up), `deleteBillingPrepay` (remove), `initiatePayment` (`method=prepay`), `getBillingCart`.  **Path/Query/Body:** None.  **Returns:** Object with per-prepay rows: - `prepay_id` (integer). - `prepay_module` (string) — service module the prepay is scoped to (or `default` for any). - `prepay_amount` (decimal) — original deposit amount. - `prepay_remaining` (decimal) — funds left. - `prepay_automatic_use` (bool) — auto-apply to invoices. - `prepay_paid` (bool) — whether the funding invoice has been paid (unpaid prepays are listed but unusable).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Top up:** `addBillingPrepay` (returns an invoice id you then pay via `initiatePayment`). - **Pay with prepay:** `initiatePayment` with `method=prepay`. - **Remove an unfunded prepay:** `deleteBillingPrepay`. - **Cart view:** `getBillingCart` (includes prepay summary). 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getBillingPrePaysWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/prepays';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// List prepay deposits on the account — remaining balance and auto-use flags
  ///
  /// Returns every prepay deposit on the account — funded or pending — with remaining balances, modules they're scoped to, and the `automatic_use` flag controlling whether the balance auto-applies to future invoices. Use to gate `method=prepay` at checkout (a prepay must be funded to count toward payment) or to render a prepays management page. Read-only. `csrf_token` is stripped from the helper output. Sibling ops: `addBillingPrepay` (top up), `deleteBillingPrepay` (remove), `initiatePayment` (`method=prepay`), `getBillingCart`.  **Path/Query/Body:** None.  **Returns:** Object with per-prepay rows: - `prepay_id` (integer). - `prepay_module` (string) — service module the prepay is scoped to (or `default` for any). - `prepay_amount` (decimal) — original deposit amount. - `prepay_remaining` (decimal) — funds left. - `prepay_automatic_use` (bool) — auto-apply to invoices. - `prepay_paid` (bool) — whether the funding invoice has been paid (unpaid prepays are listed but unusable).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Top up:** `addBillingPrepay` (returns an invoice id you then pay via `initiatePayment`). - **Pay with prepay:** `initiatePayment` with `method=prepay`. - **Remove an unfunded prepay:** `deleteBillingPrepay`. - **Cart view:** `getBillingCart` (includes prepay summary). 
  Future<Object?> getBillingPrePays({ Future<void>? abortTrigger, }) async {
    final response = await getBillingPrePaysWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Pay invoices through the chosen gateway — returns the next-step action
  ///
  /// Universal payment trigger — the final step in every order/checkout flow. Use after any order endpoint (`addVps`, `addQs`, `addBackup`, `addMail`, `addBillingPrepay`) returns an invoice id, or after `getBillingInvoices` surfaces unpaid invoices. Resolves the chosen gateway class under `include/Api/Billing/Pay/`, populates it with the invoices, and returns one of three response shapes the client must act on: `redirect` (send the user to the gateway URL), `submit` (POST a form with the supplied items), or `single` (processed synchronously). Sibling ops: `getBillingCart`, `getBillingInvoices`, `getBillingInvoice`, `addBillingPrepay`, `updateBillingPaymentMethod`, `addBillingCreditCard`.  **Path params:** - `method` (string enum, required) — one of `cc`, `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`. Rejected with 400 otherwise. - `invoices` (string, required) — comma-separated identifiers. Each identifier may be:   - a bare integer invoice id (e.g. `25296600`);   - `INV<module><iid>` (e.g. `INVvps25296600`) — strict invoice lookup;   - `SERVICE<module><id>` (e.g. `SERVICEvps12345`) — picks the most recent unpaid invoice for that service;   - `RINV<module><rid>` (e.g. `RINVvps78901`) — picks the most recent unpaid invoice for that repeat-invoice row;   - `PREPAYID<pid>INV<iid>` — explicit prepay-funding invoice.  **Query params:** - `redirectUrl` (string, optional) — override the gateway return-URL. Defaults to `https://my.interserver.net/pay/`.  **Returns** (one of three shapes — branch on `type`): - **type=`redirect`:** `{type: \"redirect\", redirect: \"<gateway-url>\", text: \"...\"}` — send the user to `redirect`. - **type=`submit`:** `{type: \"submit\", action: \"<url>\", method: \"POST\", items: {field: value, ...}}` — render a form with those fields, POST to `action`. - **type=`single`:** `{type: \"single\", text: \"...\"}` — payment already processed; surface `text` to the customer.  **Side effects:** - Creates a `payment_requests` row tracking the attempt (via `addPaymentRequest`). - On `single`-mode success (`cc`, `prepay`): marks the underlying `invoices.invoices_paid=1`, triggers `queue_process_payment($iid)` → service activation. - On `redirect`/`submit`-mode: nothing is paid yet; the gateway IPN/callback handler in `confirm()` (in each `Pay/_*.php` subclass) runs `queue_process_payment` after the gateway notifies us of success.  **Auth:** Session/API key. Ownership of every referenced invoice is enforced through the `setInvoices()` lookup (filters by session `account_id`).  **Errors:** - `400 Invalid payment method` — unrecognized `method`. - `402` / gateway-specific text — card declined, balance insufficient, etc. Returned as `{error: \"<text>\"}`. - `422 Invalid Invoice Tag` — identifier format not recognized. - `401` — unauthenticated. - Method-specific:   - `cc`: card not verified (use `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify` first; verify via `updateBillingPaymentMethod`).   - `prepay`: insufficient prepay balance (use `addBillingPrepay` to top up first).  **Related calls:** - **Get an invoice id to pass:** `addVps` / `addQs` / `addBackup` / `addMail` / `addBillingPrepay` / `getBillingInvoices`. - **Confirm invoice detail first:** `getBillingInvoice`. - **Set up payment methods:** `addBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`. - **After payment:** poll the originating service endpoint (e.g. `getVpsInfo` for VPS) until status flips to `active`.  **Example happy-path (VPS):** ```text # 1) Order created — POST /vps/order returned {serviceid: 12345, real_iids: [\"25296600\"]} # 2) Pay with stored credit card: GET /apiv2/billing/pay/cc/25296600 # 3) Response: {\"type\": \"single\", \"text\": \"Payment processed.\"} # 4) Poll service: GET /apiv2/vps/12345  -> {\"vps_status\": \"active\", ...} ``` **Example PayPal flow:** ```text GET /apiv2/billing/pay/paypal/25296600 {\"type\": \"redirect\", \"redirect\": \"https://www.paypal.com/...\", \"text\": \"...\"} # Client redirects user; PayPal IPN later marks invoice paid and activates service. ``` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] method (required):
  ///   The payment method to use. Valid values: `cc` (credit card), `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`.
  ///
  /// * [String] invoices (required):
  ///   A comma-separated list of invoice IDs or invoice Tags to pay. These IDs are returned by order endpoints (e.g. `/backups/order`, `/vps/order`) and by `/billing/invoices`. Invoice tags accepted are SERVICE<module><id>, RINV<module><repeat invoice id>, INV<module><invoice id>, PREPAY<prepay id><invoice id>, and <invoice id>.
  Future<Response> initiatePaymentWithHttpInfo(String method, String invoices, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/pay/{method}/{invoices}'
      .replaceAll('{method}', method)
      .replaceAll('{invoices}', invoices);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Pay invoices through the chosen gateway — returns the next-step action
  ///
  /// Universal payment trigger — the final step in every order/checkout flow. Use after any order endpoint (`addVps`, `addQs`, `addBackup`, `addMail`, `addBillingPrepay`) returns an invoice id, or after `getBillingInvoices` surfaces unpaid invoices. Resolves the chosen gateway class under `include/Api/Billing/Pay/`, populates it with the invoices, and returns one of three response shapes the client must act on: `redirect` (send the user to the gateway URL), `submit` (POST a form with the supplied items), or `single` (processed synchronously). Sibling ops: `getBillingCart`, `getBillingInvoices`, `getBillingInvoice`, `addBillingPrepay`, `updateBillingPaymentMethod`, `addBillingCreditCard`.  **Path params:** - `method` (string enum, required) — one of `cc`, `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`. Rejected with 400 otherwise. - `invoices` (string, required) — comma-separated identifiers. Each identifier may be:   - a bare integer invoice id (e.g. `25296600`);   - `INV<module><iid>` (e.g. `INVvps25296600`) — strict invoice lookup;   - `SERVICE<module><id>` (e.g. `SERVICEvps12345`) — picks the most recent unpaid invoice for that service;   - `RINV<module><rid>` (e.g. `RINVvps78901`) — picks the most recent unpaid invoice for that repeat-invoice row;   - `PREPAYID<pid>INV<iid>` — explicit prepay-funding invoice.  **Query params:** - `redirectUrl` (string, optional) — override the gateway return-URL. Defaults to `https://my.interserver.net/pay/`.  **Returns** (one of three shapes — branch on `type`): - **type=`redirect`:** `{type: \"redirect\", redirect: \"<gateway-url>\", text: \"...\"}` — send the user to `redirect`. - **type=`submit`:** `{type: \"submit\", action: \"<url>\", method: \"POST\", items: {field: value, ...}}` — render a form with those fields, POST to `action`. - **type=`single`:** `{type: \"single\", text: \"...\"}` — payment already processed; surface `text` to the customer.  **Side effects:** - Creates a `payment_requests` row tracking the attempt (via `addPaymentRequest`). - On `single`-mode success (`cc`, `prepay`): marks the underlying `invoices.invoices_paid=1`, triggers `queue_process_payment($iid)` → service activation. - On `redirect`/`submit`-mode: nothing is paid yet; the gateway IPN/callback handler in `confirm()` (in each `Pay/_*.php` subclass) runs `queue_process_payment` after the gateway notifies us of success.  **Auth:** Session/API key. Ownership of every referenced invoice is enforced through the `setInvoices()` lookup (filters by session `account_id`).  **Errors:** - `400 Invalid payment method` — unrecognized `method`. - `402` / gateway-specific text — card declined, balance insufficient, etc. Returned as `{error: \"<text>\"}`. - `422 Invalid Invoice Tag` — identifier format not recognized. - `401` — unauthenticated. - Method-specific:   - `cc`: card not verified (use `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify` first; verify via `updateBillingPaymentMethod`).   - `prepay`: insufficient prepay balance (use `addBillingPrepay` to top up first).  **Related calls:** - **Get an invoice id to pass:** `addVps` / `addQs` / `addBackup` / `addMail` / `addBillingPrepay` / `getBillingInvoices`. - **Confirm invoice detail first:** `getBillingInvoice`. - **Set up payment methods:** `addBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`. - **After payment:** poll the originating service endpoint (e.g. `getVpsInfo` for VPS) until status flips to `active`.  **Example happy-path (VPS):** ```text # 1) Order created — POST /vps/order returned {serviceid: 12345, real_iids: [\"25296600\"]} # 2) Pay with stored credit card: GET /apiv2/billing/pay/cc/25296600 # 3) Response: {\"type\": \"single\", \"text\": \"Payment processed.\"} # 4) Poll service: GET /apiv2/vps/12345  -> {\"vps_status\": \"active\", ...} ``` **Example PayPal flow:** ```text GET /apiv2/billing/pay/paypal/25296600 {\"type\": \"redirect\", \"redirect\": \"https://www.paypal.com/...\", \"text\": \"...\"} # Client redirects user; PayPal IPN later marks invoice paid and activates service. ``` 
  ///
  /// Parameters:
  ///
  /// * [String] method (required):
  ///   The payment method to use. Valid values: `cc` (credit card), `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`.
  ///
  /// * [String] invoices (required):
  ///   A comma-separated list of invoice IDs or invoice Tags to pay. These IDs are returned by order endpoints (e.g. `/backups/order`, `/vps/order`) and by `/billing/invoices`. Invoice tags accepted are SERVICE<module><id>, RINV<module><repeat invoice id>, INV<module><invoice id>, PREPAY<prepay id><invoice id>, and <invoice id>.
  Future<InitiatePayment200Response?> initiatePayment(String method, String invoices, { Future<void>? abortTrigger, }) async {
    final response = await initiatePaymentWithHttpInfo(method, invoices, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InitiatePayment200Response',) as InitiatePayment200Response;
    
    }
    return null;
  }

  /// Place two micro-charges on the card to start CVV verification (step 1 of 2)
  ///
  /// Step 1 of the two-step card-verification flow. After `addBillingCreditCard` returns `action='verify'`, call this with the card's CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via `postBillingCreditCardVerify` to finalize verification. **After 3 failed CVV attempts** (`cc_fails_<cc>` counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields:** - `cc_ccv2` (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** `Your card is charged. Please enter the amounts charged up!` — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via `verify_cc_charge()` (gateway-side). - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing or blank CVV` — `cc_ccv2` absent or empty. - Gateway error text — charge attempt failed. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `addBillingCreditCard` (must have returned `action='verify'`). - **Next (step 2):** `postBillingCreditCardVerify` (submit `cc_amount1` + `cc_amount2`). - **After verification:** `updateBillingPaymentMethod` to make it the default. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.
  ///
  /// * [PatchBillingCreditCardVerifyRequest] patchBillingCreditCardVerifyRequest (required):
  Future<Response> patchBillingCreditCardVerifyWithHttpInfo(int id, PatchBillingCreditCardVerifyRequest patchBillingCreditCardVerifyRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/creditcards/{id}/verify'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchBillingCreditCardVerifyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Place two micro-charges on the card to start CVV verification (step 1 of 2)
  ///
  /// Step 1 of the two-step card-verification flow. After `addBillingCreditCard` returns `action='verify'`, call this with the card's CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via `postBillingCreditCardVerify` to finalize verification. **After 3 failed CVV attempts** (`cc_fails_<cc>` counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields:** - `cc_ccv2` (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** `Your card is charged. Please enter the amounts charged up!` — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via `verify_cc_charge()` (gateway-side). - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing or blank CVV` — `cc_ccv2` absent or empty. - Gateway error text — charge attempt failed. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `addBillingCreditCard` (must have returned `action='verify'`). - **Next (step 2):** `postBillingCreditCardVerify` (submit `cc_amount1` + `cc_amount2`). - **After verification:** `updateBillingPaymentMethod` to make it the default. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.
  ///
  /// * [PatchBillingCreditCardVerifyRequest] patchBillingCreditCardVerifyRequest (required):
  Future<SuccessTextResponse?> patchBillingCreditCardVerify(int id, PatchBillingCreditCardVerifyRequest patchBillingCreditCardVerifyRequest, { Future<void>? abortTrigger, }) async {
    final response = await patchBillingCreditCardVerifyWithHttpInfo(id, patchBillingCreditCardVerifyRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Submit two micro-charge amounts to finalize card verification (step 2 of 2)
  ///
  /// Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by `patchBillingCreditCardVerify`) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via `updateBillingPaymentMethod` (`payment_method=cc<idx>`) or used directly with `initiatePayment` (`method=cc`). After 3 failed attempts (`cc_fails_<cc> > 3`) the card is locked. Sibling ops: `getBillingCreditCardVerify`, `patchBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields (schema `BillingVerifyCcRequest`):** - `cc_amount1` (number, required) — first micro-charge amount (in dollars, decimal). - `cc_amount2` (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing charge amounts` — `cc_amount1` or `cc_amount2` absent. - Verification failure text (status `failed` / `error` / `warning`) — amounts don't match. - `401` — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** `patchBillingCreditCardVerify`. - **Next:** `updateBillingPaymentMethod` to make the verified card default, or `initiatePayment` (`method=cc`) to pay immediately. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.
  ///
  /// * [BillingVerifyCcRequest] billingVerifyCcRequest (required):
  Future<Response> postBillingCreditCardVerifyWithHttpInfo(int id, BillingVerifyCcRequest billingVerifyCcRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/creditcards/{id}/verify'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = billingVerifyCcRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Submit two micro-charge amounts to finalize card verification (step 2 of 2)
  ///
  /// Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by `patchBillingCreditCardVerify`) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via `updateBillingPaymentMethod` (`payment_method=cc<idx>`) or used directly with `initiatePayment` (`method=cc`). After 3 failed attempts (`cc_fails_<cc> > 3`) the card is locked. Sibling ops: `getBillingCreditCardVerify`, `patchBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields (schema `BillingVerifyCcRequest`):** - `cc_amount1` (number, required) — first micro-charge amount (in dollars, decimal). - `cc_amount2` (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing charge amounts` — `cc_amount1` or `cc_amount2` absent. - Verification failure text (status `failed` / `error` / `warning`) — amounts don't match. - `401` — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** `patchBillingCreditCardVerify`. - **Next:** `updateBillingPaymentMethod` to make the verified card default, or `initiatePayment` (`method=cc`) to pay immediately. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.
  ///
  /// * [BillingVerifyCcRequest] billingVerifyCcRequest (required):
  Future<SuccessTextResponse?> postBillingCreditCardVerify(int id, BillingVerifyCcRequest billingVerifyCcRequest, { Future<void>? abortTrigger, }) async {
    final response = await postBillingCreditCardVerifyWithHttpInfo(id, billingVerifyCcRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Configure the affiliate landing dock title, description, and referrer coupon
  ///
  /// Customizes the branded landing-dock page shown to visitors arriving via the affiliate's referral link, and reserves a unique referrer coupon code that's automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (`<b>`, `<br>`, `<strong>`, `<hr>`); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: `updateAffiliatePaymentSetup`, `getAffiliateSignups`.  **Body fields (multipart or JSON, schema `AffiliateDockSetup`):** - `affiliate_dock_title` (string, optional) — landing-page title. HTML allowlist: `<b>`, `<br>`, `<strong>`, `<hr>`. - `affiliate_dock_description` (string, optional) — landing-page body. Same allowlist. - `referrer_coupon` (string, optional) — coupon code reservation. Requirements:   - ≥ 6 chars.   - `^[a-zA-Z0-9]+$` (alphanumeric only).   - Must NOT contain `facebook`, `test`, or `interserver` (substring check, case-insensitive).   - Must NOT exactly match a reserved word.   - Must NOT already exist as a coupon in any affiliate module (`webhosting`, `vps`, `quickservers`, `servers`, `backups`).  **Returns:** `{text: \"<status message>\"}`.  **Side effects:** - First time setting `referrer_coupon`: inserts a `coupons` row in each affiliate module (`type=3`, `amount=0.01`, `onetime=1`, `customer=-1`, `usable=1`, `applies=-1`). - Changing `referrer_coupon`: renames the coupon across all affiliate modules in one transaction. - Updates the account's `affiliate_dock_title`, `affiliate_dock_description`, `referrer_coupon` fields.  **Auth:** Session/API key.  **Errors:** - `422 The name must be at least 6 characters long`. - `422 Invalid Characters, use only standard english letters and numbers`. - `422 That is a reserved word that cannot be used here`. - `422 <position> is a reserved word that cannot be used here` (substring match against `facebook`/`test`/`interserver`). - `409 That name is already taken` — coupon exists in another account's module. - `401` — unauthenticated. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] affiliateDockTitle:
  ///
  /// * [String] affiliateDockDescription:
  ///
  /// * [String] referrerCoupon:
  Future<Response> updateAffiliateDockSetupWithHttpInfo({ String? affiliateDockTitle, String? affiliateDockDescription, String? referrerCoupon, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/dock_setup';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data', 'application/json'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (affiliateDockTitle != null) {
      hasFields = true;
      mp.fields[r'affiliate_dock_title'] = parameterToString(affiliateDockTitle);
    }
    if (affiliateDockDescription != null) {
      hasFields = true;
      mp.fields[r'affiliate_dock_description'] = parameterToString(affiliateDockDescription);
    }
    if (referrerCoupon != null) {
      hasFields = true;
      mp.fields[r'referrer_coupon'] = parameterToString(referrerCoupon);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Configure the affiliate landing dock title, description, and referrer coupon
  ///
  /// Customizes the branded landing-dock page shown to visitors arriving via the affiliate's referral link, and reserves a unique referrer coupon code that's automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (`<b>`, `<br>`, `<strong>`, `<hr>`); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: `updateAffiliatePaymentSetup`, `getAffiliateSignups`.  **Body fields (multipart or JSON, schema `AffiliateDockSetup`):** - `affiliate_dock_title` (string, optional) — landing-page title. HTML allowlist: `<b>`, `<br>`, `<strong>`, `<hr>`. - `affiliate_dock_description` (string, optional) — landing-page body. Same allowlist. - `referrer_coupon` (string, optional) — coupon code reservation. Requirements:   - ≥ 6 chars.   - `^[a-zA-Z0-9]+$` (alphanumeric only).   - Must NOT contain `facebook`, `test`, or `interserver` (substring check, case-insensitive).   - Must NOT exactly match a reserved word.   - Must NOT already exist as a coupon in any affiliate module (`webhosting`, `vps`, `quickservers`, `servers`, `backups`).  **Returns:** `{text: \"<status message>\"}`.  **Side effects:** - First time setting `referrer_coupon`: inserts a `coupons` row in each affiliate module (`type=3`, `amount=0.01`, `onetime=1`, `customer=-1`, `usable=1`, `applies=-1`). - Changing `referrer_coupon`: renames the coupon across all affiliate modules in one transaction. - Updates the account's `affiliate_dock_title`, `affiliate_dock_description`, `referrer_coupon` fields.  **Auth:** Session/API key.  **Errors:** - `422 The name must be at least 6 characters long`. - `422 Invalid Characters, use only standard english letters and numbers`. - `422 That is a reserved word that cannot be used here`. - `422 <position> is a reserved word that cannot be used here` (substring match against `facebook`/`test`/`interserver`). - `409 That name is already taken` — coupon exists in another account's module. - `401` — unauthenticated. 
  ///
  /// Parameters:
  ///
  /// * [String] affiliateDockTitle:
  ///
  /// * [String] affiliateDockDescription:
  ///
  /// * [String] referrerCoupon:
  Future<TextResponse?> updateAffiliateDockSetup({ String? affiliateDockTitle, String? affiliateDockDescription, String? referrerCoupon, Future<void>? abortTrigger, }) async {
    final response = await updateAffiliateDockSetupWithHttpInfo(affiliateDockTitle: affiliateDockTitle, affiliateDockDescription: affiliateDockDescription, referrerCoupon: referrerCoupon, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TextResponse',) as TextResponse;
    
    }
    return null;
  }

  /// Configure how affiliate commissions get paid out (PayPal or internal prepay)
  ///
  /// Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via `method=prepay`). Selecting `not set` suspends payouts. Sibling ops: `updateAffiliateDockSetup`, `getAffiliateRichReport`, `getAffiliateDownload`.  **Body fields (multipart or JSON, schema `AffiliatePaymentSetup`):** - `affiliate_payment_method` (string, optional) — one of `paypal` / `prepay` / `not set`. - `affiliate_paypal` (string, optional, required when method=`paypal`) — email validated by `valid_email()`.  **Returns:** `{text: \"Ok\"}`.  **Side effects:** - Updates the account's `affiliate_payment_method` and/or `affiliate_paypal` fields.  **Auth:** Session/API key.  **Errors:** - `422 Invalid Email` — `affiliate_paypal` fails `valid_email()`. - `422 Invalid Payment Method` — value not in `{paypal, prepay, not set}`. - `401` — unauthenticated.  **Related calls:** - **Read current commissions:** `getAffiliateRichReport`, `getAffiliateSalesGraph`. - **Export commission report:** `getAffiliateDownload`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] affiliatePaypal:
  ///
  /// * [String] affiliatePaymentMethod:
  Future<Response> updateAffiliatePaymentSetupWithHttpInfo({ String? affiliatePaypal, String? affiliatePaymentMethod, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/affiliate/payment_setup';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data', 'application/json'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (affiliatePaypal != null) {
      hasFields = true;
      mp.fields[r'affiliate_paypal'] = parameterToString(affiliatePaypal);
    }
    if (affiliatePaymentMethod != null) {
      hasFields = true;
      mp.fields[r'affiliate_payment_method'] = parameterToString(affiliatePaymentMethod);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Configure how affiliate commissions get paid out (PayPal or internal prepay)
  ///
  /// Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via `method=prepay`). Selecting `not set` suspends payouts. Sibling ops: `updateAffiliateDockSetup`, `getAffiliateRichReport`, `getAffiliateDownload`.  **Body fields (multipart or JSON, schema `AffiliatePaymentSetup`):** - `affiliate_payment_method` (string, optional) — one of `paypal` / `prepay` / `not set`. - `affiliate_paypal` (string, optional, required when method=`paypal`) — email validated by `valid_email()`.  **Returns:** `{text: \"Ok\"}`.  **Side effects:** - Updates the account's `affiliate_payment_method` and/or `affiliate_paypal` fields.  **Auth:** Session/API key.  **Errors:** - `422 Invalid Email` — `affiliate_paypal` fails `valid_email()`. - `422 Invalid Payment Method` — value not in `{paypal, prepay, not set}`. - `401` — unauthenticated.  **Related calls:** - **Read current commissions:** `getAffiliateRichReport`, `getAffiliateSalesGraph`. - **Export commission report:** `getAffiliateDownload`. 
  ///
  /// Parameters:
  ///
  /// * [String] affiliatePaypal:
  ///
  /// * [String] affiliatePaymentMethod:
  Future<TextResponse?> updateAffiliatePaymentSetup({ String? affiliatePaypal, String? affiliatePaymentMethod, Future<void>? abortTrigger, }) async {
    final response = await updateAffiliatePaymentSetupWithHttpInfo(affiliatePaypal: affiliatePaypal, affiliatePaymentMethod: affiliatePaymentMethod, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TextResponse',) as TextResponse;
    
    }
    return null;
  }

  /// Refresh stored card expiration and re-trigger MaxMind fraud scoring
  ///
  /// Updates the expiration date on a stored credit card and re-encrypts the card record. If the updated card matches the account's primary `cc`, the account-level `cc_exp` is also refreshed. If no MaxMind risk score exists yet for the card, `update_maxmind()` is called to compute one. Use to fix an upcoming expiration before recurring charges fail. Sibling ops: `addBillingCreditCard`, `deleteBillingCreditCard`, `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index (the key in the account's `ccs` array, returned by `parse_ccs` and surfaced as `cc<idx>` in `updateBillingPaymentMethod`).  **Body fields:** - `cc_exp` (string, required) — new expiration in `MM/YYYY` format.  **Returns:** `Card updated successfully.`.  **Side effects:** - Updates the `ccs` array (re-serialized via `myadmin_stringify`) on the account. - When the card == primary `cc`, the account-level `cc_exp` is also written. - Triggers `update_maxmind($custid, false, $cc_idx)` if no risk score exists.  **Auth:** Session/API key. Card ownership enforced via `parse_ccs`.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Please enter valid card expiry date` — `cc_exp` body field missing. - `Invalid expiration date. It must be in the form of MM/YYYY` — wrong format. - `401` — unauthenticated.  **Related calls:** - **Verify a freshly added card:** `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Remove the card:** `deleteBillingCreditCard`. - **Make it default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID. Use IDs from `GET /billing/creditcards` or the response from `POST /billing/creditcards`.
  Future<Response> updateBillingCreditCardWithHttpInfo(int id, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/creditcards/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Refresh stored card expiration and re-trigger MaxMind fraud scoring
  ///
  /// Updates the expiration date on a stored credit card and re-encrypts the card record. If the updated card matches the account's primary `cc`, the account-level `cc_exp` is also refreshed. If no MaxMind risk score exists yet for the card, `update_maxmind()` is called to compute one. Use to fix an upcoming expiration before recurring charges fail. Sibling ops: `addBillingCreditCard`, `deleteBillingCreditCard`, `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index (the key in the account's `ccs` array, returned by `parse_ccs` and surfaced as `cc<idx>` in `updateBillingPaymentMethod`).  **Body fields:** - `cc_exp` (string, required) — new expiration in `MM/YYYY` format.  **Returns:** `Card updated successfully.`.  **Side effects:** - Updates the `ccs` array (re-serialized via `myadmin_stringify`) on the account. - When the card == primary `cc`, the account-level `cc_exp` is also written. - Triggers `update_maxmind($custid, false, $cc_idx)` if no risk score exists.  **Auth:** Session/API key. Card ownership enforced via `parse_ccs`.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Please enter valid card expiry date` — `cc_exp` body field missing. - `Invalid expiration date. It must be in the form of MM/YYYY` — wrong format. - `401` — unauthenticated.  **Related calls:** - **Verify a freshly added card:** `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Remove the card:** `deleteBillingCreditCard`. - **Make it default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The credit card ID. Use IDs from `GET /billing/creditcards` or the response from `POST /billing/creditcards`.
  Future<SuccessTextResponse?> updateBillingCreditCard(int id, { Future<void>? abortTrigger, }) async {
    final response = await updateBillingCreditCardWithHttpInfo(id, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }

  /// Set the account's default payment method for recurring/auto charges
  ///
  /// Sets the account's preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary `cc` on the account. Use after `addBillingCreditCard` + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers `update_maxmind()` and `update_fraudrecord()` risk-score generation. Sibling ops: `addBillingCreditCard`, `postBillingCreditCardVerify`, `deleteBillingCreditCard`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPaymentMethodRequest`):** - `payment_method` (string, required) — one of:   - `cc` — use the existing primary credit card.   - `cc<idx>` (e.g. `cc2`) — promote the card at index `idx` (from `parse_ccs`) to primary. Must be verified.   - `paypal` — switch to PayPal. - `cc_auto` (string `0`/`1`, optional) — auto-charge flag. Implicitly set to `1` when selecting `cc`/`cc<idx>`, `0` for `paypal`.  **Returns:** `{text: \"Payment Method Updated\"}`.  **Side effects:** - When `payment_method=cc<idx>`: copies the indexed card's encrypted `cc` and `cc_exp` onto the account's primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - `Invalid Credit Card Specified` — `cc<idx>` is malformed or `idx` not found in `parse_ccs`. - `This CC has not been verified.` — the chosen card hasn't completed `postBillingCreditCardVerify`. - `Invalid Payment Method Specified` — value not in `{cc, paypal, cc<idx>}`. - `401` — unauthenticated.  **Related calls:** - **Prerequisite for `cc<idx>`:** `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Now pay an invoice:** `initiatePayment` (`method=cc` will use the default; `method=paypal` if you switched). - **Audit current methods:** `getAccountInfo` (account profile shows cards as masked). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BillingPaymentMethodRequest] billingPaymentMethodRequest (required):
  Future<Response> updateBillingPaymentMethodWithHttpInfo(BillingPaymentMethodRequest billingPaymentMethodRequest, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/payment_method';

    // ignore: prefer_final_locals
    Object? postBody = billingPaymentMethodRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Set the account's default payment method for recurring/auto charges
  ///
  /// Sets the account's preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary `cc` on the account. Use after `addBillingCreditCard` + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers `update_maxmind()` and `update_fraudrecord()` risk-score generation. Sibling ops: `addBillingCreditCard`, `postBillingCreditCardVerify`, `deleteBillingCreditCard`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPaymentMethodRequest`):** - `payment_method` (string, required) — one of:   - `cc` — use the existing primary credit card.   - `cc<idx>` (e.g. `cc2`) — promote the card at index `idx` (from `parse_ccs`) to primary. Must be verified.   - `paypal` — switch to PayPal. - `cc_auto` (string `0`/`1`, optional) — auto-charge flag. Implicitly set to `1` when selecting `cc`/`cc<idx>`, `0` for `paypal`.  **Returns:** `{text: \"Payment Method Updated\"}`.  **Side effects:** - When `payment_method=cc<idx>`: copies the indexed card's encrypted `cc` and `cc_exp` onto the account's primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - `Invalid Credit Card Specified` — `cc<idx>` is malformed or `idx` not found in `parse_ccs`. - `This CC has not been verified.` — the chosen card hasn't completed `postBillingCreditCardVerify`. - `Invalid Payment Method Specified` — value not in `{cc, paypal, cc<idx>}`. - `401` — unauthenticated.  **Related calls:** - **Prerequisite for `cc<idx>`:** `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Now pay an invoice:** `initiatePayment` (`method=cc` will use the default; `method=paypal` if you switched). - **Audit current methods:** `getAccountInfo` (account profile shows cards as masked). 
  ///
  /// Parameters:
  ///
  /// * [BillingPaymentMethodRequest] billingPaymentMethodRequest (required):
  Future<SuccessTextResponse?> updateBillingPaymentMethod(BillingPaymentMethodRequest billingPaymentMethodRequest, { Future<void>? abortTrigger, }) async {
    final response = await updateBillingPaymentMethodWithHttpInfo(billingPaymentMethodRequest, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessTextResponse',) as SuccessTextResponse;
    
    }
    return null;
  }
}
