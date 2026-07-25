export * from './account.service';
import { AccountService } from './account.service';
export * from './account.serviceInterface'
export * from './backups.service';
import { BackupsService } from './backups.service';
export * from './backups.serviceInterface'
export * from './billing.service';
import { BillingService } from './billing.service';
export * from './billing.serviceInterface'
export * from './dns.service';
import { DNSService } from './dns.service';
export * from './dns.serviceInterface'
export * from './domains.service';
import { DomainsService } from './domains.service';
export * from './domains.serviceInterface'
export * from './floating-ips.service';
import { FloatingIPsService } from './floating-ips.service';
export * from './floating-ips.serviceInterface'
export * from './licenses.service';
import { LicensesService } from './licenses.service';
export * from './licenses.serviceInterface'
export * from './mail.service';
import { MailService } from './mail.service';
export * from './mail.serviceInterface'
export * from './public.service';
import { PublicService } from './public.service';
export * from './public.serviceInterface'
export * from './quick-servers.service';
import { QuickServersService } from './quick-servers.service';
export * from './quick-servers.serviceInterface'
export * from './ssl-certificates.service';
import { SSLCertificatesService } from './ssl-certificates.service';
export * from './ssl-certificates.serviceInterface'
export * from './scrub-ips.service';
import { ScrubIpsService } from './scrub-ips.service';
export * from './scrub-ips.serviceInterface'
export * from './servers.service';
import { ServersService } from './servers.service';
export * from './servers.serviceInterface'
export * from './tickets.service';
import { TicketsService } from './tickets.service';
export * from './tickets.serviceInterface'
export * from './vps.service';
import { VPSService } from './vps.service';
export * from './vps.serviceInterface'
export * from './webhosting.service';
import { WebhostingService } from './webhosting.service';
export * from './webhosting.serviceInterface'
export const APIS = [AccountService, BackupsService, BillingService, DNSService, DomainsService, FloatingIPsService, LicensesService, MailService, PublicService, QuickServersService, SSLCertificatesService, ScrubIpsService, ServersService, TicketsService, VPSService, WebhostingService];
