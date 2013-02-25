﻿ALTER TABLE [UserAccounts] ADD [AccountClosed] [datetime]
DROP INDEX [UserAccounts].[IX_VerificationKey]
ALTER TABLE [UserAccounts] ALTER COLUMN [VerificationKey] [nvarchar](100)
CREATE INDEX [IX_VerificationKey] ON [UserAccounts]([VerificationKey])
INSERT INTO [__MigrationHistory] ([MigrationId], [Model], [ProductVersion]) VALUES ('201302251409247_ExpandKeyAndAddAccountCloseFields', 0x1F8B0800000000000400ED5A5F6FDB36107F1FB0EF20E87140AD24ED80AD705AA44EB2056B92224AFB5AD0D2D9264A919A48A7C967DBC33ED2BEC28EFA6789A4645976BA0DD89BC53F3FDE1D8FC7BB1FFDD71F7F4EDF3E26CC7B804C52C14FFDE3C991EF018F444CF9F2D45FABC58B9FFCB76FBEFF6E7A11278FDEA76ADC4B3D0E677279EAAF944A5F07818C569010394968940929166A12892420B1084E8E8E7E0E8E8F0340081FB13C6F7AB7E68A26907FE0E74CF00852B526EC5AC4C064D98E3D618EEADD9004644A2238F5DF6522FA72C618F0C9352473946845D33B980BA17CEF8C51822285C016BE97BE7AFD5142A832C197614A1425ECFE2905EC5F1026A154E075FA6AA80E47275A8780702E14C2093ECA067EAD1DEA778176504F5AAC5CC7531F25CECEA248A0819A0371E86FF0D46AC0A60F994821534F77B028A75F9DFB5ED09E179813EB698D395A02FCC5D5CB13DFBB593346E60C6A43A125432532F80538644441FC812805193AC2550CB906D6AAC61AF7C0096A54AE837B82FEE57B97F411E2F7C0976A55AF754D1EAB961FD1C93E728ADE887354B6068768FDCB6A6B72FCB5E3C2C7477BAF7C9110CABEFDB2B30CF4FE540B9FE3C73D4D76C7F940A4FC2AB278B6227C7900BC2B593A358610BAA01BC4774230207C04E07BB1A41C0381F87A08B452BC1913727F382798CB76C51EF783BD2752E5BA1E02E812BD125DF010700DA8591EAEB604917EB4C22FA23CAC62C03AE8C919A28DB17E081B85C61AE85722573A54162769478D4E46C4821BF24097B9066654608426D2F7EE80E5DDFACA2C6EC9898E9079F767FD0BC5CA44722758193B373D9FEF49B6046D13E1EC0EC53A8B0C91A6C1E67ADB7AE9E55863AEBCC68D69DF7ECE197AE541033F11E6D8E6AD17AA21D13EC7A21075B7B3B0FFB559EAFDECCB763A6CE18BFBB86BE58F1DEE5A79F310773D9352443497C4F4D7428AB652173CF6FA452ACCDA52074DB9668AA68C4628C1A9FF8365AB4ED8FA60B661AB24D2003EF64DB7BFE5E7C040817716A93CB99F111991D8E1F72842BB054F0A643A01240C5378A93242B9B28F15E5114D09EB15DF983530B9D552D5F866CF39A4C0757EDABB1D4316DE1662827A29C362DB0C340D1ACE6587489CA370066455527969963C783791399160F9A09E1E826A2880F17FE3DF2E47B11CCEC6A82E122750E9C8064C43410756798C1B83DC07DDB4F8D643564BDF16DCDABAADC7CA00B2305A5B88C31C01A5DEC64D5D1B14856D5500071D15F0F49AA42946DF46455CB67861510ECF5E84BB57A149811144D2518CD6D2D62B61E9479660F4E2D228E925CDE4C609BD599C58C37677DA6AE1A6EFDAFB567960355AFF2E66F450042D8FB78F7E897589FA263A70E455AFE1019DB373BA82309239EAEB9960EB847787B1EED955E5DC44A8DA86A36C0AE126CEA675385259D83661CAA6E1187595DA44A91B87E358556A13CFEA1C8EEBA8565B1B6877EF82DD2E5CDBC0EDBE11125735A753DEAA73386E0FEA68CC4641DBC46B34EF86D5AA694DC456E7705CBBB86D02DBBDC391AD42B7096C758EC62D0AD81EEC62C0707CB39A6D429B7D36EA343042AB95425901DD4A3EDBB7C3E0BBA3BCFA0F7981386AD51C73C8F5D131B72F7037524F337AF764A5DD984551D9BA509C15718FB3150562CBBD5CB5F2B36FBD95629943EAD5EB54CB48A9A6657AB3FDE5C1CA778A21BE87C679A0B1CE75C227A92099E80193F0771642F6803B0E9357FABDA41A764D385D8054F7E20B60BA9BF7B51E2E463C2A0452C6EC5FFCB24075B0D9FA86B02B39D27A54E00F248B5624B39E10F67C3370E2E684E33E4F0207433518FF183FD40119FFD1789D8CFF9CAA03B1FDE3909CE4FC18282790CB5EA358FE7D801C2CFF58B82E963F3FD087E1F8871C853D29FCB1DABB297CA7C0275BCFEEFF74B8322E843DC870B7D38C08F72DAE7B24EAB330C7352FF70F10BB0E566C2C6F3D9A23EE66699E8F19FE4FB1C136FFB69DC0AD9DA79F0A2E325B8C9B7381FB5EF87D63804D827692C5FD5C71D73A6EBAF69B70C986852CDA6F1085ECE69F9F873AB6EB17F4B4C6FFABD0DB255D6E20F4BFAD38442D1FABC75CF185A83CDE90A81A62C4CF6B5004AF57729629BA2091C2EE08A4CC9F0CF3D8AA13DF39C457FC76ADD2B54295B1A4662D6E431F99BEF5737EBC2DF3F436CD9F060FA1028A49758670CBDFAD298B6BB92F1D91BE03429FC5B2B2D17BA97485B37CAA916E041F08549AAF0E21F790A40CC1E42D0FC90374CBB6DD866D8B4DCF295966249125C6663E7EA2FBC5C9E39BBF01384FB75821280000, '5.0.0.net45')
