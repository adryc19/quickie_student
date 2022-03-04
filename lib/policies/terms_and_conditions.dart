// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  void Function()? action;

  TermsAndConditions({Key? key, this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 500,
      width: 300,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        Text(
                          "Terms and conditions",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "These terms and conditions set forth the general terms and conditions of your use of the Quickie mobile application and any of its related products and services. This Agreement is legally binding between User and this Mobile Application developer. If you are entering into this agreement on behalf of a business or other  legal entity, you represent that you have the authority to bind such entity to this agreement, in which case the terms, you shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this agreement, you must not accept this agreement and may not access and use the Mobile Application and Services. By accessing and using the Mobile Application and Services, you acknowledge that you have read,understood, and agree to be bound by the terms of this Agreement. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs your use of the Mobile Application and Services.",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Accounts and membership",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We may, but have no obligation to, monitor and review new accounts before you may sign in and start using the Services. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Links to other resources",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Although the Mobile Application and Services may link to other resources (such as websites, mobile applications,etc.), we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked resource, unless specifically stated herein. Some of the links in the Mobile Application may be affiliate links. This means if you click on the link and purchase an item, the Operator will receive an affiliate commission. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their resources. We do not assume any responsibility or liability for the actions, products, services, and content of any other third parties. You should carefully review the legal statements and other conditions of use of any resource which you access through a link in the Mobile Application. Your linking to any other off-site resources is at your own risk.",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Prohibited uses",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "In addition to other terms as set forth in the Agreement, you are prohibited from using the Mobile Application andServices or Content: for any unlawful purpose; to solicit others to perform or participate in any unlawful acts; to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; to infringe upon or violate our intellectual property rights or the intellectual property rights of others; to harass,abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation,religion, ethnicity, race, age, national origin, or disability; to submit false or misleading information; to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Mobile Application and Services, third party products and services, or the Internet; to spam, phish, pretext, spider, crawl, or scrape; for any obscene or immoral purpose; or to interfere with or circumvent the security features of the Mobile Application and Services, third party products and services, or the Internet. We reserve the right to terminate your use of the Mobile Application and Services for violating any of the prohibited uses.",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Intellectual property rights",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Intellectual Property Rights” means all present and future rights conferred by statute, common law or equity in or in relation to any copyright and related rights, trademarks, designs, patents, inventions, goodwill and the right to sue for passing off, rights to inventions, rights to use, and all other intellectual property rights, in each case whether registered or unregistered and including all applications and rights to apply for and be granted, rights to claim priority from, such rights and all similar or equivalent rights or forms of protection and any other results of intellectual activity which subsist or will subsist now or in the future in any part of the world. This Agreement does not transfer to you any intellectual property owned by the Operator or third parties, and all rights, titles, and interests in and to such property will remain (as between the parties) solely with the Operator. All trademarks,service marks, graphics and logos used in connection with the Mobile Application and Services, are trademarks or registered trademarks of the Operator or its licensors. Other trademarks, service marks, graphics and logos used in connection with the Mobile Application and Services may be the trademarks of other third parties. Your use of theMobile Application and Services grants you no right or license to reproduce or otherwise use any of the Operator or third party trademarks.",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Changes and amendments",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "We reserve the right to modify this Agreement or its terms related to the Mobile Application and Services at anytime at our discretion. When we do, we will post a notification in the Mobile Application. We may also provide notice to you in other ways at our discretion, such as through the contact information you have provided.An updated version of this Agreement will be effective immediately upon the posting of the revised Agreement unless otherwise specified. Your continued use of the Mobile Application and Services after the effective date of the revised Agreement (or such other act specified at that time) will constitute your consent to those changes.",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Acceptance of these terms",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "You acknowledge that you have read this Agreement and agree to all its terms and conditions. By accessing andusing the Mobile Application and Services you agree to be bound by this Agreement. If you do not agree to abideby the terms of this Agreement, you are not authorized to access or use the Quickie Mobile Application and our Payment Services",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Contacting us",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          "If you have any questions, concerns, or complaints regarding this Agreement, we encourage you to contact us using the details below:",
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 20),
                        Text("Quickie@gmail.com"),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: action,
                icon: Icon(Icons.close),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
