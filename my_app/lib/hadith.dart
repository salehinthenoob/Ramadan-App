import 'package:flutter/material.dart';
import 'hadithlist.dart';


class Hadith{
  String title;
  String description;
  String full;
  
  Hadith(
    {required this.title,
    required this.description,
    required this.full, });
}

List<Hadith> hadithlist = [
  Hadith(title: "Favorable Environment", description: "[Al-Bukhari and Muslim]", full:"Abu Hurayrah (RadhiAllahu Anhu) reported that the Prophet (SallAllahu Alayhi Wa Sallam) said :\n \n When Ramadan enters, the gates of Paradise are opened, the gates of Hellfire are closed and the devils are chained."),
   Hadith(title: "Incomparable Reward", description: "[Al-Bukhari and Muslim]", full:"Every action a son of Adam does shall be multiplied—a good action by ten times its value, up to 700 times. Allah says:\n \n With the exception of fasting, which belongs to Me, and I reward it accordingly. For, one abandons his desire and food for My sake."),
   Hadith(title: "Incomparable Reward II", description: "[Al-Bukhari]", full:"There are two occasions of joy for a fasting person:\n \n one when he breaks his fast, and the other when he meets his Lord, and the (bad) breath (of a fasting person) is better in the sight of Allah than the fragrance of musk.(Al-Bukhari)"),
   Hadith(title: "Incomparable Reward III", description: "[Muslim]", full:"Abu Ayub (RadhiAllahu Anhu) reported that the Prophet (SallAllahu Alayhi Wa Sallam) said,\n \n Whosoever fasts in Ramadan and then follows it with fasting six days of Shawwal, it is as if he fasts forever. (Muslim)"),
   Hadith(title: "Moral Training and Self-Disciplining", description: "[Muslim]", full:"Abu Hurayrah (RadhiAllahu Anhu) reported that the Prophet (SallAllahu Alayhi Wa Sallam) said :\n \n Fasting is a shield; so when one of you is fasting he should neither indulge in obscene language nor should he raise his voice in anger. If someone attacks him or insults him, let him say: “I am fasting!” (Muslim)"),
   Hadith(title: "Chances for Forgiveness", description: "[Al-Bukhari]", full:"Abu Hurayrah (RadhiAllahu Anhu) reported that the Prophet (SallAllahu Alayhi Wa Sallam) said,\n The five (daily) prayers, and from one Friday prayer to the next, and from Ramadan to Ramadan are expiation for sins committed in between provided one stays away from the major sins. (Al-Bukhari)"),
   Hadith(title: "Chances for Forgiveness II", description: "[Muslim]", full:"Abu Hurayrah (RadhiAllahu Anhu) reported that the Prophet (SallAllahu Alayhi Wa Sallam) said,\n \n Whoever observes fasts during the month of Ramadan out of sincere faith, and hoping to attain Allah’s rewards, then all his past sins will be forgiven.(Al-Bukhari and Muslim)"),
   Hadith(title: "Chances for Forgiveness III", description: "[Al-Bukhari and Muslim]", full:"Abu Hurayrah (Radhi Allahu Anhu) reported that\n \n the Prophet (SallAllahu Alayhi Wa Sallam) saidWhoever stands (in the voluntary night prayer of) Ramadan out of faith and in hope of reward, his previous sins will be forgiven. (Al-Bukhari and Muslim)"),
   Hadith(title: "Protection from Hellfire", description: "[Al-Bukhari and Muslim]", full:"Abu Sa`id Al-Khudri (RadhiAllahu Anhu) reported that\n \n the Prophet (SallAllahu Alayhi Wa Sallam) said,\n \n Anyone who fasts for one day for Allah’s sake, Allah will keep his face away from the Hellfire for (a distance covered by a journey of) seventy years. (Al-Bukhari and Muslim)"),
   Hadith(title: "Protection from Hellfire II", description: "[An-Nasa’i]", full:"Uthman ibn Abi Al-‘Aas (RadhiAllahu Anhu) reported that the Prophet (SallAllahu Alayhi Wa Sallam) said,\n \n Fasting serves as a shield from Hellfire. (An-Nasa’i)"),
   Hadith(title: "Become Generous", description: "[Al-Bukhari]", full:"Ibn ‘Abbas (RadhiAllahu Anhu) narrated:\n \n “The Prophet (SallAllahu Alayhi Wa Sallam) was the most generous of all people, and he used to become more generous in Ramadan when Gabriel met him. Gabriel used to meet him every night during Ramadan to revise the Qur’an with him. Allah’s Messenger then used to be more generous than the fast wind.” (Al-Bukhari)"),
   Hadith(title: "Itikaf", description: "[Al-Bukhari]", full:"Abu Hurayrah (RadhiAllahu Anhu) reported:\n \n The Prophet (SallAllahu Alayhi Wa Sallam) used to observe itikaf (spiritual retreat in a mosque) every Ramadan for ten days; in the year in which he passed away, he observed itikaf for twenty days. (Al-Bukhari)"),
   
];