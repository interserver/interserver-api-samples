require "json"

module InterserverApiClient
  module Api
  class Affiliate
    def initialize(@conn : Connection); end

    # List affiliate banner image assets with filename and dimensions Returns the catalog of pre-built banner images affiliates can embed on partner sites — same catalog for every account (not per-affiliate). Use to render a creative-asset picker in the affiliate dashboard. Each row carries the image filename and dimensions so the client can build correctly-sized &#x60;&lt;img&gt;&#x60; tags. Read-only. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateWebTraffic&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;updateAffiliateDockSetup&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;AffiliateBannerRow&#x60;: - &#x60;image&#x60; (string) — filename (e.g. &#x60;12946798.gif&#x60;); served from the affiliate asset bucket. - &#x60;width&#x60; (string) — pixels. - &#x60;height&#x60; (string) — pixels.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
    def banners() : Response(Array(InterserverApiClient::AffiliateBannerRow))
      @conn.request(Array(InterserverApiClient::AffiliateBannerRow),
        method: :GET,
        path: "/affiliate/banners",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Configure the affiliate landing dock title, description, and referrer coupon Customizes the branded landing-dock page shown to visitors arriving via the affiliate&#39;s referral link, and reserves a unique referrer coupon code that&#39;s automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (&#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: &#x60;updateAffiliatePaymentSetup&#x60;, &#x60;getAffiliateSignups&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliateDockSetup&#x60;):** - &#x60;affiliate_dock_title&#x60; (string, optional) — landing-page title. HTML allowlist: &#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;. - &#x60;affiliate_dock_description&#x60; (string, optional) — landing-page body. Same allowlist. - &#x60;referrer_coupon&#x60; (string, optional) — coupon code reservation. Requirements:   - ≥ 6 chars.   - &#x60;^[a-zA-Z0-9]+$&#x60; (alphanumeric only).   - Must NOT contain &#x60;facebook&#x60;, &#x60;test&#x60;, or &#x60;interserver&#x60; (substring check, case-insensitive).   - Must NOT exactly match a reserved word.   - Must NOT already exist as a coupon in any affiliate module (&#x60;webhosting&#x60;, &#x60;vps&#x60;, &#x60;quickservers&#x60;, &#x60;servers&#x60;, &#x60;backups&#x60;).  **Returns:** &#x60;{text: \&quot;&lt;status message&gt;\&quot;}&#x60;.  **Side effects:** - First time setting &#x60;referrer_coupon&#x60;: inserts a &#x60;coupons&#x60; row in each affiliate module (&#x60;type&#x3D;3&#x60;, &#x60;amount&#x3D;0.01&#x60;, &#x60;onetime&#x3D;1&#x60;, &#x60;customer&#x3D;-1&#x60;, &#x60;usable&#x3D;1&#x60;, &#x60;applies&#x3D;-1&#x60;). - Changing &#x60;referrer_coupon&#x60;: renames the coupon across all affiliate modules in one transaction. - Updates the account&#39;s &#x60;affiliate_dock_title&#x60;, &#x60;affiliate_dock_description&#x60;, &#x60;referrer_coupon&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 The name must be at least 6 characters long&#x60;. - &#x60;422 Invalid Characters, use only standard english letters and numbers&#x60;. - &#x60;422 That is a reserved word that cannot be used here&#x60;. - &#x60;422 &lt;position&gt; is a reserved word that cannot be used here&#x60; (substring match against &#x60;facebook&#x60;/&#x60;test&#x60;/&#x60;interserver&#x60;). - &#x60;409 That name is already taken&#x60; — coupon exists in another account&#39;s module. - &#x60;401&#x60; — unauthenticated. 
    def dock_setup(affiliate_dock_title : String? = nil, affiliate_dock_description : String? = nil, referrer_coupon : String? = nil) : Response(InterserverApiClient::TextResponse)
      @conn.request(InterserverApiClient::TextResponse,
        method: :POST,
        path: "/affiliate/dock_setup",
        form: Hash(String, Crest::ParamsValue){ "affiliate_dock_title" => affiliate_dock_title, "affiliate_dock_description" => affiliate_dock_description, "referrer_coupon" => referrer_coupon },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download Exports the affiliate signup report as a downloadable file in the requested format. Use for accounting, tax filings, or sharing reports outside the dashboard. **Response is a binary stream, not JSON** — the handler emits the file body with matching &#x60;Content-Type&#x60; + &#x60;Content-Disposition: attachment&#x60; headers and &#x60;exit()&#x60;s the request immediately. Consumers must read the raw response body. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateSalesGraph&#x60;.  **Query params:** - &#x60;ex&#x60; (string, optional, enum &#x60;csv&#x60;/&#x60;xls&#x60;/&#x60;xlsx&#x60;/&#x60;pdf&#x60;, default &#x60;csv&#x60;) — export format. - &#x60;st&#x60; (string, optional, default &#x60;default&#x60;) — status filter (same as &#x60;getAffiliateSignups&#x60;). - &#x60;year&#x60; (integer, optional, default current year) — report scope.  **Returns:** File download with format-appropriate Content-Type: - &#x60;csv&#x60; → &#x60;text/csv&#x60;, filename &#x60;Interserver_Affiliates.csv&#x60;. - &#x60;xls&#x60; / &#x60;xlsx&#x60; → &#x60;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet&#x60;, filename &#x60;Interserver_Affiliates.&lt;ext&gt;&#x60;. - &#x60;pdf&#x60; → &#x60;application/pdf&#x60;, filename &#x60;Interserver_Affiliates.pdf&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
    def download(*, st : String? = nil, ex : String? = nil, year : Int32? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/affiliate/download",
        query: { "st" => st, "ex" => ex, "year" => year },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Configure how affiliate commissions get paid out (PayPal or internal prepay) Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via &#x60;method&#x3D;prepay&#x60;). Selecting &#x60;not set&#x60; suspends payouts. Sibling ops: &#x60;updateAffiliateDockSetup&#x60;, &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateDownload&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliatePaymentSetup&#x60;):** - &#x60;affiliate_payment_method&#x60; (string, optional) — one of &#x60;paypal&#x60; / &#x60;prepay&#x60; / &#x60;not set&#x60;. - &#x60;affiliate_paypal&#x60; (string, optional, required when method&#x3D;&#x60;paypal&#x60;) — email validated by &#x60;valid_email()&#x60;.  **Returns:** &#x60;{text: \&quot;Ok\&quot;}&#x60;.  **Side effects:** - Updates the account&#39;s &#x60;affiliate_payment_method&#x60; and/or &#x60;affiliate_paypal&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 Invalid Email&#x60; — &#x60;affiliate_paypal&#x60; fails &#x60;valid_email()&#x60;. - &#x60;422 Invalid Payment Method&#x60; — value not in &#x60;{paypal, prepay, not set}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Read current commissions:** &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;. - **Export commission report:** &#x60;getAffiliateDownload&#x60;. 
    def payment_setup(affiliate_paypal : String? = nil, affiliate_payment_method : String? = nil) : Response(InterserverApiClient::TextResponse)
      @conn.request(InterserverApiClient::TextResponse,
        method: :POST,
        path: "/affiliate/payment_setup",
        form: Hash(String, Crest::ParamsValue){ "affiliate_paypal" => affiliate_paypal, "affiliate_payment_method" => affiliate_payment_method },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Read a combined affiliate performance summary (HTML payload) Returns a server-rendered HTML/text summary report combining commission totals, conversion rates, and traffic in one round-trip — useful for embedding in a dashboard panel. The payload is **not structured JSON** — for chart-friendly data use &#x60;getAffiliateSalesGraph&#x60; and &#x60;getAffiliateTrafficGraph&#x60; instead. Backed by &#x60;affiliate_summary_report()&#x60;. Sibling ops: &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateDownload&#x60;, &#x60;getAffiliateWebTraffic&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;{text: \&quot;&lt;html-or-plain-text-report&gt;\&quot;}&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Structured time series:** &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;. - **Per-signup detail:** &#x60;getAffiliateSignups&#x60;. - **CSV/XLSX export:** &#x60;getAffiliateDownload&#x60;. 
    def rich_report() : Response(InterserverApiClient::TextResponse)
      @conn.request(InterserverApiClient::TextResponse,
        method: :GET,
        path: "/affiliate/rich_report",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Read aggregated affiliate sales time-series (monthly buckets) for chart rendering Returns aggregated sales time-series data — monthly buckets with sale counts/totals — for the requested look-back window. Use to render a sales trend chart in the affiliate dashboard. Bucket granularity is fixed at monthly by &#x60;sales_graph_lte_data&#x60;; increasing &#x60;days&#x60; extends the window, it does not change bucket size. Sibling ops: &#x60;getAffiliateTrafficGraph&#x60; (clicks), &#x60;getAffiliateRichReport&#x60; (combined summary), &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateDownload&#x60;.  **Query params:** - &#x60;days&#x60; (integer, optional, default &#x60;365&#x60;) — look-back window in days.  **Returns:** &#x60;StatusMonthlyBreakdown&#x60; — buckets keyed by month with aggregated sale counts and amounts.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
    def sales_graph(*, days : Int32? = nil) : Response(InterserverApiClient::StatusMonthlyBreakdown)
      @conn.request(InterserverApiClient::StatusMonthlyBreakdown,
        method: :GET,
        path: "/affiliate/sales_graph",
        query: { "days" => days },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Read affiliate signup stats and per-customer conversion data Returns referred-customer signup statistics with optional status filtering — counts, conversion data, and per-customer detail produced by &#x60;affiliates_clientside()&#x60;. The inner &#x60;data&#x60; shape varies by status filter; pass &#x60;default&#x60; for the full dataset. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateDownload&#x60;.  **Query params:** - &#x60;st&#x60; (string, optional, default &#x60;default&#x60;) — status filter. &#x60;default&#x60; returns all; other values narrow the results to that status.  **Returns:** &#x60;{data: &lt;object&gt;}&#x60; — signup counts, conversions, per-customer detail (shape depends on &#x60;st&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
    def signups(*, st : String? = nil) : Response(InterserverApiClient::GetAffiliateSignups200Response)
      @conn.request(InterserverApiClient::GetAffiliateSignups200Response,
        method: :GET,
        path: "/affiliate/signups",
        query: { "st" => st },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Read aggregated affiliate referral click/visit time-series for chart rendering Returns aggregated click/visit time-series data from the &#x60;affiliate_traffic&#x60; table — monthly buckets with visit counts — for the requested look-back window. Pair with &#x60;getAffiliateSalesGraph&#x60; to compute click-to-sale conversion ratios client-side. Sibling ops: &#x60;getAffiliateSalesGraph&#x60; (sales), &#x60;getAffiliateWebTraffic&#x60; (raw per-visit log entries), &#x60;getAffiliateRichReport&#x60;.  **Query params:** - &#x60;days&#x60; (integer, optional, default &#x60;180&#x60;) — look-back window in days.  **Returns:** &#x60;MonthlyCounts&#x60; — buckets keyed by month with aggregated visit counts.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
    def traffic_graph(*, days : Int32? = nil) : Response(InterserverApiClient::MonthlyCounts)
      @conn.request(InterserverApiClient::MonthlyCounts,
        method: :GET,
        path: "/affiliate/traffic_graph",
        query: { "days" => days },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # List the 20 most recent affiliate referral visits with IP, referrer, timestamp Returns the 20 most recent raw referral visits from the &#x60;affiliate_traffic&#x60; table — visitor IP, full referral URL, and timestamp per row. Use to audit traffic sources, identify top referrers, or investigate suspicious click patterns. Hard-coded limit 20 (no pagination); for longer-term analysis use &#x60;getAffiliateTrafficGraph&#x60; or export via &#x60;getAffiliateDownload&#x60;. Sibling ops: &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateDownload&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;AffiliateTrafficRow&#x60;: - &#x60;traffic_id&#x60; (string) — row id (most-recent-first). - &#x60;traffic_ip&#x60; (string) — visitor IP (IPv4 or IPv6). - &#x60;traffic_url&#x60; (string) — referral landing URL. - &#x60;traffic_affiliate&#x60; (string) — affiliate (&#x3D; session &#x60;account_id&#x60;). - &#x60;traffic_referrer&#x60; (string) — HTTP Referer (may be empty). - &#x60;traffic_timestamp&#x60; (string) — &#x60;YYYY-MM-DD HH:MM:SS&#x60; in account timezone.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
    def web_traffic() : Response(Array(InterserverApiClient::AffiliateTrafficRow))
      @conn.request(Array(InterserverApiClient::AffiliateTrafficRow),
        method: :GET,
        path: "/affiliate/web_traffic",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
