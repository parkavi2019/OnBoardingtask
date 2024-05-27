Feature: LangFeature

Scenario: A.Add a Language To User Profile
Given User Able Login Into MarsPortal Application Successfully
When Create a NewLanguage Into User Profile '<Language>' and '<Level>'
Then The NewLanguage Record Created '<Language>' and '<Level>' successfully created

Examples: 
| Language | Level                 |
| Tamil    | Basic                 |
| Telgu    | Basic                 |
| en123h   | Basic                 |
| en123h   | Basic                 |
|          | Fluent                |
| spanish@ | Choose Language Level |

Scenario: B.Edit a Existing Language in User Profile
Given User Logs Into MarsPortal
When Edit a Existing Language into User Profile '<Language>' and '<Level>'
Then The NewLanguage Record Created '<Language>' and '<Level>' successfully

Examples: 
| Language    | Level          |
| English     | Basic          |
| Telgu       | Basic          |
| Malayalm    | Basic          |
|             | Fluent         |
| Malayalam55 | Language Level |

Scenario: C.Delete a Existing Language in User Profile
Given User Logs Into MarsPortal successfully
When  Delete the added language 


Examples: 
| Language | Level |
| English  | Basic |

