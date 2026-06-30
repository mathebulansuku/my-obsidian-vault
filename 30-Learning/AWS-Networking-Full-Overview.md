---
created: 2026-06-30
type: note
tags: [aws, networking, vpc, advanced-networking-specialty, ans, study]
source: openclaw
---

# AWS Networking — Full Overview

## Summary

AWS Networking covers VPC fundamentals, security controls, hybrid connectivity, DNS, load balancing, and advanced features. This note is tailored for the AWS Advanced Networking Specialty (ANS) exam.

---

## 1. VPC Fundamentals

- **VPC** — isolated network in AWS with a CIDR block (e.g., `10.0.0.0/16`)
- **Subnets** — tied to a single AZ; public (has IGW route) or private (no direct internet)
- **Route Tables** — control traffic flow; each subnet is associated with one
- **Internet Gateway (IGW)** — enables internet access for public subnets
- **NAT Gateway** — lets private subnets reach internet outbound; deployed in public subnet, requires Elastic IP
- **Egress-Only IGW** — IPv6 outbound-only equivalent of NAT Gateway

> **Exam gotcha:** NAT Gateway is managed/auto-scaling. NAT Instance is self-managed (disable source/dest check).

---

## 2. Security

### Security Groups (SGs)
- Stateful — return traffic automatically allowed
- Applied at ENI (instance) level
- Allow rules only (no explicit deny)
- Can reference other SGs

### Network ACLs (NACLs)
- Stateless — must allow inbound AND outbound explicitly
- Applied at subnet level
- Support allow AND deny rules
- Rules evaluated in order (lowest number first); `*` = implicit deny

> **Exam gotcha:** Use NACLs to block specific IPs. SGs for instance-level allow rules.

---

## 3. Connectivity

### VPC Peering
- Direct private connection between two VPCs (same/cross-account, same/cross-region)
- Non-transitive — A↔B and B↔C does NOT mean A↔C
- Must update route tables on both sides

### AWS Transit Gateway (TGW)
- Hub-and-spoke model connecting many VPCs and on-prem networks
- Supports transitive routing (solves VPC peering limitation)
- Supports multicast and inter-region peering
- Has its own route tables per attachment

### Site-to-Site VPN
- IPSec tunnel between on-prem and AWS
- **Virtual Private Gateway (VGW)** on AWS side
- **Customer Gateway (CGW)** on on-prem side
- Two tunnels for redundancy (different AZs)
- Max ~1.25 Gbps per tunnel

### AWS Direct Connect (DX)
- Dedicated physical connection from data center to AWS
- Consistent latency, higher bandwidth, lower cost at scale
- **Hosted** (via partner) vs **Dedicated** (direct from AWS)
- Does NOT encrypt by default — use MACsec or IPSec VPN over DX
- Takes weeks to provision

### Direct Connect Gateway
- Connects a DX connection to multiple VPCs across regions/accounts

> **Exam gotcha:** DX = consistent performance. VPN = fast setup, internet-based. DX + VPN = encrypted + dedicated.

---

## 4. DNS & Load Balancing

### Route 53 Routing Policies

| Policy | Use Case |
|--------|----------|
| Simple | Basic single-resource DNS |
| Weighted | A/B testing, blue/green (split by %) |
| Latency-based | Route to lowest latency region |
| Failover | Primary/secondary with health checks |
| Geolocation | Route by user's geographic location |
| Geoproximity | Route by location + bias (Traffic Flow) |
| Multivalue Answer | Returns multiple IPs, basic load balancing |

- **Private Hosted Zones** — DNS resolution within VPCs only
- **Resolver** — hybrid DNS between VPCs and on-prem via inbound/outbound endpoints

### Load Balancers

| Type | Layer | Use Case |
|------|-------|----------|
| ALB | 7 (HTTP/HTTPS) | Web apps, path/host-based routing, WebSockets |
| NLB | 4 (TCP/UDP/TLS) | Ultra-low latency, static IP, millions of req/sec |
| CLB | 4 & 7 | Legacy — avoid on new deployments |
| GWLB | 3 (IP packets) | Inline security appliances (firewalls, IDS/IPS) |

> **Exam gotcha:** NLB preserves client IP. ALB uses X-Forwarded-For. NLB supports static/Elastic IPs. GWLB for third-party security appliances.

---

## 5. Advanced Networking

### AWS PrivateLink & VPC Endpoints
- Expose services privately without peering or IGW
- **Interface endpoint** — ENI in your subnet, powered by PrivateLink (most AWS services)
- **Gateway endpoint** — route table entry for S3 and DynamoDB (free, no data transfer charges)

### VPC Flow Logs
- Captures IP traffic metadata (not content) at VPC, subnet, or ENI level
- Stored in CloudWatch Logs or S3
- Used for security analysis, troubleshooting, compliance

### ENI (Elastic Network Interface)
- Virtual NIC attached to EC2; has private IP, optional public IP, SGs
- Can be moved between instances for failover

### Elastic IP (EIP)
- Static public IPv4 address; remappable to different instances

### BGP (Border Gateway Protocol)
- Dynamic routing protocol used with Direct Connect and VPN
- Advertises prefixes between on-prem and AWS
- Key concepts: AS numbers, route propagation, MED attributes

### Prefix Lists
- Managed lists of CIDR blocks; reusable in SGs and route tables
- AWS-managed (e.g., S3 prefix list) or customer-managed

### AWS Network Firewall
- Managed stateful firewall at VPC level
- Deep packet inspection, domain filtering, IPS rules
- Deployed in a dedicated firewall subnet

---

## Key Exam Patterns (ANS)

- **Transitive routing** → Use Transit Gateway, not VPC peering
- **DX redundancy** → Two DX connections from different locations + VPN as backup
- **Encrypt DX traffic** → IPSec VPN over DX or MACsec
- **DNS hybrid resolution** → Route 53 Resolver with inbound/outbound endpoints
- **High-throughput, low-latency** → NLB + Direct Connect
- **Block specific IP at subnet level** → NACL deny rule
- **Private access to S3** → Gateway VPC Endpoint (free)
- **Expose internal service to another VPC** → PrivateLink (Interface Endpoint)
- **Inter-region VPC connectivity** → TGW inter-region peering or VPC peering

---

## Flashcards

**Q: What is the difference between SGs and NACLs?**
A: SGs are stateful (return traffic auto-allowed), instance-level, allow-only. NACLs are stateless (must allow both directions), subnet-level, support allow and deny.

**Q: Why can't you use VPC peering for transitive routing?**
A: VPC peering is non-transitive. If A↔B and B↔C, A cannot reach C. Use Transit Gateway instead.

**Q: How do you encrypt Direct Connect traffic?**
A: DX does not encrypt by default. Use IPSec VPN over DX or MACsec for encryption.

**Q: What's the difference between an Interface Endpoint and a Gateway Endpoint?**
A: Interface endpoint = ENI in your subnet, used for most AWS services, powered by PrivateLink. Gateway endpoint = route table entry, only for S3 and DynamoDB, free.

**Q: Which load balancer preserves the client IP?**
A: NLB preserves client IP. ALB does not (use X-Forwarded-For header).

**Q: What routing policy would you use for A/B testing in Route 53?**
A: Weighted routing policy.

**Q: How do you achieve hybrid DNS resolution between on-prem and AWS?**
A: Route 53 Resolver with inbound endpoints (on-prem → AWS) and outbound endpoints (AWS → on-prem).

---

## Feynman Explanation

Think of a VPC like a private office building. Subnets are floors — some floors have a reception desk facing the street (public), others are internal only (private). Security groups are the door locks on each office (stateful — if you let someone in, they can walk back out). NACLs are the security checkpoints on each floor (stateless — you need a badge both ways). The Internet Gateway is the main building entrance. NAT Gateway is a one-way mail slot — you can send things out but nobody can knock on your door. Direct Connect is a dedicated private road to the building. Transit Gateway is the central exchange hub connecting all your buildings.

---

## Related Notes

- [[VPC]]
- [[Direct Connect]]
- [[Route 53]]
- [[Transit Gateway]]
- [[AWS Advanced Networking Specialty]]
