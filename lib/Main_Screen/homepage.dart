

import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laptops_expert/Drawer/Drawer.dart';
import 'package:laptops_expert/Search/fake_search.dart';
import 'package:laptops_expert/Shortcuts_widgets/Widigit.dart';
import 'package:laptops_expert/Search/search.dart';
import 'package:laptops_expert/minor_screen/Alert.dart';
import 'package:laptops_expert/minor_screen/Newi_in_market.dart';
import 'package:laptops_expert/minor_screen/Shop_by_brand.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/link.dart';
// import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';




class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override



  Widget build(BuildContext context) {

    // final Stream<QuerySnapshot> _prodcutsStream = FirebaseFirestore.instance
    //     .collection('Products')
    //     .where('Price', isLessThanOrEqualTo: "80k",)
    //     .snapshots();

    // List<dynamic>images=[
    //   // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdQ2Xm52jJmtaUbeTjlgMFfFhwuPW13AAo5g&usqp=CAU",
    //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2fxbRhMj3vqQX2j2PWjiPlEX4ft6i60-xBg&usqp=CAU",
    //   "https://brandlogos.net/wp-content/uploads/2011/05/dell-3d-logo-vector-01.png",
    //
    //   "https://thumbs.dreamstime.com/z/asustek-computer-inc-taiwanese-multinational-phone-hardware-electronics-company-asus-sign-134923694.jpg",
    //
    //
    //   "https://mpng.subpng.com/20180406/hfw/kisspng-hewlett-packard-logo-printer-lg-5ac7c378ec3907.7520384215230411449676.jpg",
    //   "https://e7.pngegg.com/pngimages/897/656/png-clipart-computer-icons-acer-others-text-sign.png",
    //
    //   //
    //   "https://th.bing.com/th/id/R.ef55173fc9b0debf0b9293da4cbc8997?rik=H5STtx479JLPOQ&riu=http%3a%2f%2fwww.pngall.com%2fwp-content%2fuploads%2f8%2fLenovo-Logo-PNG-File.png&ehk=r24T165%2fkZJMHCkUHjiKSAU07kzsek52XUqVyW%2beoCE%3d&risl=&pid=ImgRaw&r=0",
    //
    //   // "https://th.bing.com/th/id/OIP.S-32PARMFcy0OxgSvIWzUQAAAA?w=169&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7",
    //
    //   "https://th.bing.com/th/id/OIP.4gs3A7JG-r_hrFc-IzvMHwHaEL?pid=ImgDet&rs=1"
    //
    //
    //
    //
    //
    // ];


    List<String>images=[

      "Assests/images/bags/apple.jpg",
      "Assests/images/bags/dell.png",
      "Assests/images/bags/asus.jpg",
      "Assests/images/bags/hp.jpg",
      "Assests/images/bags/acer.png",
      "Assests/images/bags/lenovo.jpg",
      "Assests/images/bags/realme.jpg"






];

    List<String>companyname=[

      "Apple",
      "Dell",
      "Asus",
      "H.P",
      "Acer",
      "Lenovo",

      "Realme"

    ];

    List<dynamic>images1=[

    "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXBwbGUlMjBsYXB0b3B8ZW58MHx8MHx8&w=1000&q=80",
    "https://imageio.forbes.com/specials-images/imageserve/6213c2a05ed1f7de596d35b4/Apple-Brand-M1-Model-Macbook-pro-with-colorful-light-background-/960x0.jpg?format=jpg&width=960",
    "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp-spacegray-select-202206?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653493200207",
    "https://static.acer.com/up/Resource/Acer/Laptops/Nitro_5/rev-jan-2022-intel/20211216/Nitro_5_AGW_KSP07_640.jpg",
    // "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUSFBcSEhQYFxcaEhcYFxcXExIXFxgXGhchGxcXGxccISwkGx0pIRcXJTYlKS8wMzMzGiI5PjkxPSwyMzABCwsLEA4QHRISHjUpIikyMjIyOzQyNDIyMjIyMjMyMjIyMjIyMjIyMjQyMjIyMjIyMjIyMjIyMjIyMjIyMjsyMv/AABEIAN4A4wMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAABQIDBAEGB//EAEAQAAIBAwIDBQQJBAIBAgcAAAECEQADEgQhIjFBBRNRYfAycYGhFCORkqKxwdHhBhVCUjNUYgeCFjRDRHKTs//EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EACoRAAICAQQBAwMEAwAAAAAAAAABAhFREiExQQMTIvAUYaEEcYHxMpHB/9oADAMBAAIRAxEAPwDyXZHY1zVLda3H1dsuZBObQWFtY/yIRyJ/18633v6VdULC6jP3bXFtBXl0S1buPDREgXl2MTBpTo+071kRauvbGYchGKyyiATHPYnY7b1evb2qAxF9wMlaJHNccenId2m3LhFZPmpxrdDLUf0deRrqllPd2hc4Vcm4xD/VosSSDZugn/wnrWe9/TVy3cFu66240v0i6xDkWkDYspAEs4aFgdT8ayf33VQR9IuwVKmXYkqSSRJ3/wAm92R8TUF7X1AdbnfXM0QorlySEMyknmvEdj41Ctwwxpqv6Va3ZGoF62ym0LoGNxWZCyKpUMNx9YJPTkdzVn/wg+ZQ37at3gtpK3Ie4129aRZAOILaZjJ2GQpOna99bgvC64uBMM5E4f6noR5GpWu3NSgYLfuDJcWOW5GTt7XOZu3DMzxmguGBfRRRQ5BRRRWgFFFFAFFFFAFFFFAFFFFAFFFFAFFcrtAFFFFAXWdMXBIKCP8Aa5bQ/AMwJ+FUV2ihSdhMnVYYy6iFXJjJiFXq3gOprV2poO4YJmLkqTmv/GeIiEb/ACiIPgZHSTirlQdHaKKKpCU7fE/pXMz4n7aOnxP6U3t9sW4RbmnRwiIoO2RxtlWkkH2jB2iNzz3qFik+RRkfE/bRkfE/bTYdpWMcfoqz4yCfZUATHKVJk7nLmDvVWs11p7ZRLARixOcqTjlMCFHlv7wIEAQulZF2R8T9tdBJ6/Oo1o0NzC4rkBgroxUxBCsDG+28VTDKobx/EP3ohvH8Q/en6dr2didKuywIZDEszMd1/wDMj8+SxVq+0rT22RdMikkYMXnAArIERzxif3qGnWUJYbx/EP3ohvH8Q/evQntbTlld9OXImcmtAbvkF2WCAoCjYbEjoDVZ7UtYoi2MQBbyAdOMKxLKxxkq0z4yBzHJYpZQihvH8Q/eiG8fxD96b39dZZSo0yrxqZDjLEOzMoIG0hgvw5bCNidu2wZ+jKDBEh0kFnDsRK+IEeG45Glk2yjzkN4/iH70Q3j+IfvT6x2tb41uWQyvcLndC04qFBGw5qSSI3cxtIaLdpWIgaVDykkoCRwA+yAASFfkNi8iDSy0soRw3j+IfvRv4/iH702t9oIAk2zK6drRIZIYtyYqQRABPvME9Z3f3+3JYacGZ2LoRJMmZWYOwInkigRFCJLJ5uG8fxD967DeP4h+9atddV2BRcVCBQCykmOpIAE/Cs8epFSzLdMhDeP4h+9EN4/iH71OPUiiPUilk1EIbx/EP3oxbx/EP3qcepFdjY/xSxqK4bx/EP3ohvH8Q/etp7OcGCUB87lsfrVh7KeJzte4aiyT9mVXc6aJ4/AuhvH8Q/euw3j+IfvW5ezbh2m2PfdtgfaTUn7KuL/laPuvWj+RpuNE8fgXQ3j+IfvQpMxJ5+Na7ujdVLHGBEw6k7mOQPiRWQ+18aGWmtmiFFFFaKdPL4n9KaWe0LIVVuWS8Iq45Kqgj2iCBlxEZEmTIjkTSvp8T+lO7HbFkIEuaZGxtoqkKoJdUKlnPUFjl+c1DUGV6jtWyXR006jFbgYEDjytC2pIGwAO8AbcwZNW3u1tMweNIJbKCWWVlmO0ACRkBMDkPCahqO1NO5Y/RlncJAVQB3cAkLtIYlo65f8AiKxdqam3ccNZtd0uEFQZBMkz8/lUNt12Va+8ly4z27YtoSMUEwogCNyZ9/5UaC4EuK5GQV0YqYhgrAld/GIrNV+kfFgxAIDKSCAQQDMEHY+6hzlkdv2rp2hm0qlssm4wAZKyBHSA/PeWmTUbfatpLiXF06cPeSsiGDKAJBnkciOfON4ro7R0+Yf6PMOzGSnEDdVwI5ewGXyy61H+4WRhhYUY3bbtOJLhHcshJJ2YMogAezBnY1Ct/df6LbPaOlxxfT/4ncd2xLgQp6RI257cxvSvXXEuXGdEFtDGKA7CABzJM8ufXyrdqO1UuW2tmzbUlFAZEUNnnkxymcdoA357mlEepFDEne1hHqRRHqRRHqRRHqRQwEepFGPqRRHqRRHqRQBHqRRHqRRHqRRj6kUAR6kUR6kUR6kUR6kUAR6kUR6kUR6kUR6kUAR6kUEbH+KI9SKCNj+4oD1dvtW5alEW3tcZpa2GacgTuTG+Cjl/iOR3oftm7cVrYVeNcWxFyWUEkAguQYJkbbchA2qvSaPvrlxS+AUM5b6uAMwu/eXEUbuB7XUbVqfQCz3+N5S1lsLkpxSQMAoBIYlskO8KUJMiJ1OTivarZ97wwU37nSStmH+2XYnuyR5FSfsBmstP00rI9rDU3O8uSxR7aqVtrbL94we7jicTAYqYlhtE6O1+xhdbvLTqWK24TgJuM+ZIUo7LkFtkxPFEDeJ5R8nkjJKaVPhrOGjUoQabje2Tymp/47n/AOK//wBFpOfa+NPe07Pd99bmcHKTEThdCzHSYpEfa+Ndpcnyv1P+f8EKKKKHA6eXxP6U3t9oafu1R7AZggGQRV4griTiwLbshJkSVmBABUdPif0pvpO07NtVDWFf/jDBrdo4hZ7wq8ZMW2O/I7bgVk1B0Xvr9ECSumJGb7Sw4MAEO7GCDO3X2pB2rFrr9h7Q7u1hc7xS0ZQFCENBLcmYiFjbE77xV1/tCwbXdpZAYWwgY27QLEQBcLbsrbTAmS0EkDfp1+kIGWl4st4ZgMSQzAYsBsTdC7csN9oob/lCar9C4V1ZlDKrqzKYhgGBK77GRtTF9bpCoA0xkW4HEw4pYgsQ/FEgH/aB7IGJWaWAwzBKgrkAQCVncA+MVTElS5HDdoWWuI506gC4jMqi2AVWDjjEEHK4CNsgE5RVPamrt3AotWltkM5MLbWQxkDh5jyMxyG1arev0oYv9G3YoSpxZFi5m4USBxDg9kQB5kVy1rdIuJ+iyQSWBuOQdyQBx8vYEEcgZmds0R3T3Qlj1Ioj1Ipyut0oM/RydsTuoHJeMAlgN19keJljMDuo7RsNbdUsKrEGOC0d2zJ4/aQKXUiOltVO1DOlZEsepFEepFEepFEepFDAR6kUR6kUR6kUR6kUAR6kUR6kUR6kUR6kUAR6kUY+pFEepFEepFAEepFEepFdUb/HxFadBfS2T3lsXAQu0oDKuG9ogwIDAgc53oVGWPUigjY/xTa3q9NxZ6bIl2I+sYbF2OJCsBAUoBAG4NLdQVLOUGKliVWZIUnhBPWBFCtV2ObzEM4BIkkGCRIymD4iQDHiB4VVcuOSSWZsgA4LMcsfZJnnA2E9OVTukFiQybsY+st+PvrptGJyt/8A7rP5ZV0klJUfa8Pn9N6lT6afDRcvaN1sS2ovcJkE3bsqYxlZbhMEiR0JFT1euuXnBzuNAWJd2bgkq0zMjIweknxNY1WTAZPjctgfaWp5oHtWCCbtskMrMe9ttyYGIDbjblImvP5Z6EnTb62/J6fE4eVtJqK5e+/7IR61H7u4zhpMSzZSWNxSSSeZO5pGfa+Ne4/q/tO1etfVvk20y3/mCMVLE+PWvDn2vjW4TlJXJHyf10Yry+12qIUUUV0PId6fE/pTbSdo2UVQ1lX/AOMENbtcIWe9If2nLSCJiDtuBBUnl8T+lXJorjDJbVwqdwwtuQRMTIEc9qyWLa4GGo19g2u7S1Dd2EDG3bBZhAFwuCWQ7TAmSYJgb6G7R0LHJ9K07wqNgvtsf8WHQp9m0DmlOkuBczbfAAEtg+MN7JyiIPSo37TWzi6sjRMMpUx0MGhvUzX2hesME7m21sjLOWZgZIxiWMAb+fmemfSlchmCVyGQBAJWdwJ6xVNdVZoc5Oz0a9p6Xn9GAJRhONp8WZ85CmA2PIcttthVdjXaY5rcsiGuO4ICgxiuCArBWSrHY4jKI6hUnZ1xoi3cMgERbcyCCQRtuCAT8DVBt+fypSK5P4h02q0fSwx5iS7j/SCB3h32ubGRLDpsKbeqtcOSCRpyhi1bIa4eTEFpJg+3IMgbAbFc2lYDIqwEAyUaIacTPnBj3God35/KmxNXyj0A7V0wM/R1Ox27uyoJmdtziDI8SuAAJyY1jGp00vlaZhggtmQhyVDkzKrRu2PjtO80tfTsoBYEBhKkqQGHKQTzHuqplipRdbf9D/UdoaVmUppwoF5H6b2wEDWyMiGnBjuObeZnp12jPEdO2ZS5MFQmTABIUMFGPFviNzOPKPO0VaGp/EP21Wjk46doy2BuXNlyE795ucZA8DuZBhYaTU6YoqXbXFKTcBIUQYYkKQSMFU9ZJflIITWrbOQqKWY8lUFieuwG5qBNKFv4j0F3VaMOe7ssVK3FMtvxOMHXJjiQobfnuOe5Mm1+jOR+jkFu8MAgAEtNvEB4UAbbCOhDc6Q902wxaTyGJ32B28dmU+4jxqDiCQdiDBB2II5gjoaUW38Q8v6zTFka3ZKRkHnBgfqwqMELYmGloIE9SZ2r7T1Vi4v1VrBgwhuESgUzkFOORYzIA8NgIpNUlWaUZbe5b65igetxXEsliFWSSYAAJJJ5AAczVn0K5E4PALAnu3gFfaE+XXwqUZoh65iuR62qVzSOshlYETIKMIiJmeXtL9o8arw8/lTYUiUepFEepFVUVaLRd65ioH2vjUK6nMe8UoVRyiiitFO9Pif0rfp+2LluMAgI7uWxOTC2CqA77DElTjEjnzM4Dy+J/SmWl7EuXBwtbmLZKkuCO8BNuTjiJAnn1A5kCsmo30cv9s3Ht92VQLhgsB5VIjESx2gASZMDnMmrm/qS+QRwCWZiQkbkMOQMbZyNuYB5lictvst26qJClQS0tNoXYEKdwjAmY5wJrr9j3lDlkC4IWabicgUBIg7x3qb8t457UNe4wuZJMASSYEwPIeVdQ+NRqSCedDkxun9QXFTBSq8GAYBwwlcS05e1HXpvESZVZjx+VXafTd4SAQIRmJYtEKJO4Bj47Vvf+n7mLOGRgqsxIa5/iJKwVBz58PPbeJEzYtORibWkp3c8OKryMwrs46+NxvlVGY9CmdvsG4xxXEnG23tNsHcpvt/iQxPQAE71Xq+xntLmwQqImLiEiQhHDMz9au0Tz2jemwcX2mZ9RrC6orRCLAgHeFVZO/PFEG0ez4yayuZP2flUig+XjVdUi33CiiitFLdNfNskgBgVKsrTDKwggwQfsIpkP6ivQF4IFvu4xbliVnnsYYxGwmIiRSyzZL5RHCjOZPRefxrRqezntkhiu1svIYkYh8PDq2w94rJuLa4NGm7eu20wXGIQbqZ4DKkwdzAVZPRF5RWtf6pu75IhJzgjMcTsSxYEnMcR4TtMHcisadiXDlDW5V3txk0m4hgqOHmehMDxIqm12TduAd2oc4ozKDuguEC3kWgcWQOxMdYq2aTkZ9VqGuXHuPGTuWMTEkyYneoIYNbdR2RdRDcKAoEtsXV0ZQLglBsee/L48t6xIJNQ5yT7LtPqMGDjcg8iDBBEEGOhBNbX7ZdgQQkFnZhi25dWVgeLYfWXDAjdyaX4D0a0aLQm82CATiW3J6bAbAkkkgADmSKmxmL6RO92kzC4uyq5UlQGhceSrJJVdl2/8FGwAFZMx6FNE/p66WdGCoU7rPNmUL3iF1kx0CtJ5bdazp2WxfuyVU949sZMwBdBuBtO8gDxJFNiuL7F1FN9P2G9wkKycPdSxZwB3vsTKyOW8jasGo0/du1tuasVMExIMSPKrYdrkz11OY94qeA8PnUYhvjQl2RooorRTp5fE/pTYdmao20ZSxUd01sC4du8BKFQSACDzjkWHjSnp8T+lN10erRbTW3eHVSmF1wV+rLBTJEHAHl028qhqCJ3eytWuRyJzUtcK3vaCmCXkjI7nbc78qr1uj1dsO1xrmMEs3emGHApO7S3tW15b8um3bFvVMCi3Wls07s3XLMqsMwDusZEDmJPiJqnU6XU92z3GcopUMGu5e0xAMZGQTa2PXARMbQ21twxbU7fWoVZb6+6hxfBbbvMk4MyyCpxYiVPMGOY8q06O7cd1RLjqWJAPeOBxGWnGTuQCfdJrIokgeJjmB86cDsW/buIFOLMxVWV3UjgLcws7qDsN/EbiYIpso1emv2lV3ZsSqAMLjGJBxtnrsAwjlzrGdU5BUu+LRkubQ0QBI5GIH2Cma9m6q6klmZQjMA10kDBzbKgHbIFTt4EeNL9bo3stjcABluTo3ssVPLluCN45VCyTW9MzHr7j+VU1aevuP5VVWkZiFFFFU0X6RXJY22KlbbMSGKnADiEjxB5VqfQXWJTMMc0tgZPxsRmEGQ2jIk5YwZ61l0neSzW2KlbbMSGKnEDiEj38qYdxqRccC82bOiyLtwG65UMkNtMKQZaIqG4rYkOzta2UFyzsVde/GZkLOa5TBDJM9InaJWrq7qDAXLigbYi44AgzsAYEHf30zXQ61iCDcLhiuPf/WLurbjKVEsh+wmJBpMwIJB5zv7+tCy2yTfVXGBVrjkGJBdiDHKQTvFRt8/gfyqNSt8/gfyoc5PYsnyqdu6UMoSpgiVYgwRBEiobejXPXOoYN+gW42Rt3ChUJP1jqSJxWMeijryUVcNHeDEi5xLbuuxFy4Cqq+N08pMkkyJB36gisvZ9m5ccWbOWVwgEBiAQN5aOg50w0vZ+qvBXFxgDbZgz3X4VFwqy9SN7cwPI0Nx3XDM3aHfae6yPcYuIl1u3DMcuIwTG48t6Xu8kkySSSSSSSTzJPU1bqncu3eMzOGKsWcsZXbdjueVU+udDMnuE1A+18an651A+18aqCIUUUVo0d6fE/pW1buoAULcuwUAAFxwAsSFieUDlyrF0+J/Spi8/LNuUe03Lw91QW+jTbuXoJW5c3uFiBcccciWO8ZEkb8zUnOoYYM90hjBDXGxJJy3kxzafefGsi33Ewzb89zvPP40C+/PNvvN7v0H2VBbKqst9fdUKkrRQj4LJHo1o+n3JnvLkyTPePMmJM/8AtX7B4Vkz8vn/ABRn5fP+KlEpmldU4XEO4XEriLjAYkyRHKD4Vy9qXuR3ju8CBk7NA5wJ5Vnz8vn/ABRn5fP+KUNyZ6+4/lVNTL+XzqFVCKoKKKKpot07upJtsynE7qxUwdiJHOfCtIuX1ZvrLgdmUN9Y4Z2iVkzuQDzPKsSuRuCR7iRUlvMOTMOU8R6cqC30bRc1JIPeXMpIH1r5DcE/5SBOJ+w+FLzVnfvzzb7zeug+yq6gt9hU7fP4H8qhXVaKEfBbt6P8Ubej/FR7zy+f8Ud55fP+KlGdLJo+JBUkEGQQ0EEciCORq61rLiQEuXFgEDG46wCZIEcgTvWXPy+f8UZ+Xz/ilF3LGaTJkkmSSdyfGubej/FQz8vn/FGfl8/4pRNLJ7ejUD7Xxoz8vn/FcBkz51UVKiNFFFaNHenxP6U2tdlWmVWOpQSisy8GQm2WI3YCQVIgxzHUxSnp8T+lcoVNdjh+xklsdTbIUt/lbDEgBlVRnDEhiOcSpE9a7e7ItCSNSmIL9ULEKWiFD+0wUFRyMmSNgU1FQ1qWBxp+yLbDi1FtMXuBmyU5BGAHdrzYEEkMSOR22k4EsDvDbyEd5gHOMRnjkd4iN+fxrNV2lKhhmCVlcgOZWdwPOKhmTVcDrUdjW1ts1u9buOqA4hk4oJzZQJJAC8veZ6V3S9jWmRWbUWwxgxnbWAULYnmQ0wCY2g864/aOmJMWMclMwlpsWJBDLIA24hECZBPIVXa19m3cd+7S4rXLbQ1lAFUMS6qskAkYjbbn0qWa9t9HbXZKNbVhetlyjkWwyFi6nhQCOoEzPUCOtd0vZVl0DNqEUtbJxPdiLkNwtJ2Xa1vz4m8Kr1Oq0z28EtG22Gz8J3VmKg9WyDEEz0XYxV1jtHTqoHc7jugxa3bu5BMs2EsuJbIbcXsiZoRV9ivUdl2lNvC6HVntrcYd3FsNHEd/NtjywM1d/Z7EA/SUJ3JE2+XHjG/tGLUg8sm/13yafVWbYuKbYuSWNvJFHNGUZMCGCgkGFxO0yOVQ7U1Nq4R3Ns24ZyfZ3DHICByxllHPaN+lLHtW4a3Qqhbu7iXAp5Ab44gm5IGIWTjzmelb07HskE96sxIHeWgWPdhgIgwZkEbxAEtMhDRQwpK+BrpOzrbWybjhHBuAqWtrBQSNjJjnv4wOuQl2j2XbtmUcMoulCwa0/BICvtEE7wDEx0AkqKKWXUqqh8/Y9kBiLqEgmFF21vDgbHHliZmOc7CN89vsxO8uo7gKrpg02xnba5GQJ2Y4wQBtvM7AFTRQjmsD5eyLUSbqE52xAu2eTOyu3s8gFWD1DTt7NUaTsu2zOty4FK3FUS1tJUgw28/+M+AJPFypRFFLGpYG2s7MtIma3UYxbOIa2zEMha4wGw22AWSZB8p5Y7Ntm5cR3AVXXBptjO21zHMTzOMMAOhmdgCqoiljUr4HWr7ItKrFL1ssLakL3ls5MXAYAwBCifM+XIVHs1BcdGcBRbzRsrRDQQCA3JoOYERkVHszIVUUDksD652LZ2A1FoStznctsMg5VRIAjhGRPPcCKzW+y7feOj3UW2FyR+D6xSeGB4kBvcRFKqKWHJYGGu0CW0Do6uQcbmPdlVYbSCOasQ2J8EJ5EUtPtfGpVE+18aqFpsrooorRSR5fE/pXK70+J/SnFrtLT4qr6YEhbYZhiC2FsqTtBBYtJ33gEyVFQsVfYmop3d7T0zzOlUHAhSoxhjlJIVhkBKAHpjMf40Xe0NI3/wBrHARwkCOWMbxIgnIjyIMzQ1pWRJXVnp+cU21Ov0zLcW3p8CygI3PE94WY7k48OKiJ5fErtKVDAuJUEFgCASs7gHptUMyVEOLxP3v5o4vE/e/mno12mJyOmG7AkZSPbVnAxZQAQGUbQAORy4eaLtGyltVuadGcCC8WzPG7EkHnAcDn/iB0ELJSvlCPi8T97+aOLx/F/NOG1djJGXTgYuzFcxDDfu1OWQI9iZH+J55bW3u0rJQqmnVTgyqSttj7KBGLdGBViTBkGIEk0sUsoRcXj+L+aOLxP3v5p2O0LOdt2sBgty4xVe7tgq1zJVYQwfEbdBECIG+DXXEcr3YgC2q7qikkcycTDHz26bUsOq5Rj4vE/e/mji8T97+anHqRRHqRUszZDi8T97+aOLx/F/NTj1Ioj1IpYshDeJ+9/NHF4/i/mpx6kUR6kUsWQ4vH8X813i8fxfzUo9SKI9SKWLIw3j+KucXifvfzU49SKI9SKWSyPF4/i/miG8fxVLH1Ioj1IpYshDeJ+9/NHF4/i/mpx6kUY+pFLGohxeP4v5rg57+NWY+pFQPtfGqVOyFFFFaNHTy+J/SnK9pWMETuVDBFU3BassQwQgsVaRcJbfijnylZKY8vif0ptptdYVVD2c4wkYIpBVWDEXFIZ8mKkh5AEjwNZNQZy52jZLhxYWAjAphbVQ2edvxyiArE+0pIgVJ9bpJYrpjjBxGTAychuxdogFOh3E7cj19TostrDkAf7OJOL7kG5PM2+o9knacaW664j3He2uCM5KoBAUH/ABiTy99DTf7GntDU2HWLNnA5KcpbcQ2QxLMADKEDpB3NZdK+LBoBggwYgwZgjwNU1dpSuQzBKyuQBglZ3APjFDnJ3uNbetsh1JtDFWuYjC0xKlFVM52dhizGerGs3ad+3ccNbti2BbAKgIBIJ3257ECTuYnaYDJO09Nz+jAEownG0+LM+ZIUwGx5DlttsKz/AE6zDfUiTddgcLZ4Gt4hIPs8UvtsOQ8oV4tCnH1Ioj1Irbf1KMHhAC1tFEW7S4spQ5jECCYuTH+w51uftKyWZvo6AF2i2LdsLBIwOQIZSFEYgwSZ8RQxpWRJHqRRHqRTfTauxba4Wtd6C5ZJCBVA5LgenEwO49lTHhO9r9OVVUsRi6SClqSq4STcG7MQjgryOZPOg0rIlx9SKMfUimdzW2zkFtgBi4H1dmVVikAGJJUC6A3PiBrum1loZ95ZDZJbXYICpW3hcZf9WJOQPiBNBpV8iuPUiiPUimHamqt3CDbti2JYlRbtqN2JBDjc7EDE7DHbnsvxoR7PkI9SKI9SKMaMfW1CBHqRRHqRRHraiPW1AEepFEepFEetqI9bUAR6kUR6kUR62oj1tQBHqRRHqRRHraiPW1AEepFQPtfGp4+tqgfa+NVFiQooorRs70+J/Sm9jWaUKA+nJbBFZgTMhQHIGcAkgQ0TuSZ5Uo6fE/pTdNbpMAr2GLYICVxEulply2IMF2BPjiD0gw1A5q7ujNv6u2wdjc63CUHeA25l8TwyNpid5Nd0uu0ww7yxJHdkwFILKCH2yWVYBDB2BLGCNjJtXoiZGnuASkDNuQaX3NzYkbfDodxBdTpgbqd2ChRShhie8VCWVXPGqlyq9OFd9+cOnfRRrb2mZCLVp0fJYZnJ4QgDA8RBOWR5dRy5VksxO+42kAwYneDvFbu1bulOQ09t1Pe8LMWxNrEADEsSDlJ38uXKselYBgSAQGUkESCAdwRIkeUj3ihymDDfblO0kEx7+tcxp4t/RuwDWmUFnlyCIkykpbYCACZAAOwAIFVajU6XJDbtOsFsiwVhHdhUIQtDQwyIPPqd9oZ0/dCjGjGnS6rSEEvYcvCAFeBWgJmzKHhSYubLtxDkd66mq0QYE6e5sSYyJBl1K5AvuAoYfETPOg0rKEkURTnSa/Tqiq9qWC7nubLb96WbcmWySFk7pG0zXNVrdM6kLp2ViiKGDW1gq0kwF5kHc8zAHiaDSq5E8UY09TtHSDKdOW3PEVtDIQojAbWzwndSYJJAEwK7WusBnLW+Z4SLFhoPdFMijNiBnD4CB5mAKDQsiaKMafHtHSFgfoxAG2IFvlwtPKW3WIO8M2+4UYtRqbLOpS3got3AQQDNxsyhMcwCygeSjwoHBZF2NGNN7ut05NsrZ9m67MMbYBRrmQUjfOF2A2jzqttVYlCLRgWMH2tiXwIzA6tJU5k9DtQjisizGjGnS6/Td5cbuji2EDu7RxiMmVSYT/Lh4gdp2EGOm11hZLWpBL8Hd2mjK5KnvG4tk4cBHiCCZAuhZE+NEVq1lxHVMFCsBxQoA2toOnOWW43/ALh7hlihl7BFEURRFCBFEUY0YmgDGoH2vjU8agfa+NVGkQooorRo70+J/SnCavSYBXsPlggJXES6WmUt7UgF2BPjiD5FPIjnFc28R86yWLodPqdCTIsXQJSBmeQaX37zYkbfsdxWuo06XDCEplaPsC5kBvdQd4QVBJADc4QeJpTt4j50beI+dC6vsNxqNGAwFq5JSATvDdG/5Okb/wC3TAbUrtjn7qht4j513bxHzoSTtUOdHq7KlO8szATKEUkwLgYjIwZztnfqp8BUNZqLLT3dsrNkKAVXhuB1bIEH/XJZImACZLGFO3iPnXNvEfOpQt1X/D0j9oaPeNMd7hbcLsDAgQ3LhnHlLGk2uKF3NtStvbEEEGNucs2/PqaybeI+dG3iPnVI7f8ARyipCPEfOiPP86os5RXY8/zojz/OqDlFdjz/ADojz/OoDlFdjz/OiPP86AFO4nlO9Pn7T0k//LlvrGf/AI7VvLcG2hCzgI4TBIIBJUlpVDHn+dEef50KpUPBr9GMcbDHFrR4lQ5BBDSMoBaZOxBI5DpVe1+nay691FxkQAi3aVUYMxbFgcgCCu/WIhRACiB4j50R5j51DWtnoD2hoSzOdO8l9himKpBjZXClvZ3jbrlzZRrHtFk7lGUBFD5Hm8mSNztEeHuFZoHiPnRHmPnQjlaosinlzXaUlSLRBDqzfU2iGAADcGcCYPDyEk8zw+fgeI+dEDxHzoYjsX3IJJUQJMDwE7Cqj7XxqMDxHzrqx4/nREojRRRWjR9G/wDTS2DYvE21Y9+gk2+8xBTc4jc9Bt4z0r1+nUkgPprYkA7WwNsXkE7gGVQRO4aYG4HxzQ669YBWzeuWwTJCMVBPKTFaf7/rP+3e++370PT4/wBRGMUmfXbFslZuaa2rYAhQitxliACwERGBPhJovAKTGmV+OABajbo2UENPPpHImYB+Rf3/AFn/AG7332/ej+/6z/t3vvt+9LNfVRwfXSpI4dIk96EIItgYRvcBIEjw9ATayMTFm3kFuHe3wyphNgJM89unvFfH/wC/6z/t3vvt+9H9/wBZ/wBu999v3pY+qjg+rJmxA+i21E7lrQ5F1UcIOxCm4TufZHOrHMFgNIrATv3YH/1Cojh4uHBtvE77RXyX+/6z/t3vvt+9H9/1n/bvffb96WX6mJ9bwYhY0tvcXciVWFKyLYggFsoHLxradJbiRatzHIog3jlMbV8X/v8ArP8At3vvt+9H9/1n/bvffb96WPqYnrP/AFQtqLVgi2tsm5c2ASYxETjtP2185AphrtdevgC9euXApkB2LQTzImsnc+fyqHl8nkUpWhu2g0mL435OUKxYrA7vZihSW+s2jbhM9Jrl3Q6PFimoJONwqCG3Pdk219iRxRJIEzAjeFPc+fyo7nz+VQnqRwMU0mmxQ96STct57osIyy6rP+S7AsYXfyNWXtHo8hjfYJhcnLdiwnuoxUwDBmd4A5ZTSrufP5Udz5/KtD1I4G2o0WiAcpqDIVyqsCTkLUopZUKnjncGDsNudA0GjIU98wPc2yVm2ZusjFhkfZUMFEQTvvA3pT3Hn8qO48/lQerHBPtGwlu4Ut3O8QBYcdSVBYfAkj4VHQ/8g+P5VzuPP5VK3aIMgwfGsSVpojkmNMR4D7Kbv2bZCqXuYE20bHgczBLezykgQN+e8GvMZv8A7mjJ/wDc1514mRNLkb6yyiOVRs1EQ2KidhOwJ2mfPxg0v7QH1Z94rP3lz/c1x8mEFiR4GrHwtOyWrGeI8B9lMtPoLZtq9xscgeLNPa7yMcI2GMnImJPlXnM3/wBzRm/+5qLwtBNIfanSWlQslzNpWFxUSCzAk77bAGBPPeJrAyiDt0PSsGb/AO5oyf8A3NPRYbRjoq7uPP5UV6i2f//Z",
    "https://www.91-cdn.com/hub/wp-content/uploads/2021/02/hp_pavilion_13_14_15_featured.jpg",
    // "data:image/jpeg;base64,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",
    "https://m.media-amazon.com/images/I/71QXJg8uOCL._SL1500_.jpg",
];

    return

      SafeArea(
        child: Scaffold(

         drawer: DRAWER(),
    appBar:   AppBar(
    elevation: 0.2,
    // shape: Border(
    //     bottom: BorderSide(
    //       width:1,
    //       color: Colors.transparent,
    //     )

    // ),
    automaticallyImplyLeading: true,
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    title: Column(
    children: [
    Row(
    // mainAxisAlignment: MainAxisAlignment.start,
    children:<Widget>[
    Text("Home",
    style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal
    ),),



    // ElevatedButton.icon(onPressed: (){},
    //     icon: Icon(Icons.search,color: Colors.black,),
    //     label: Text("Search it ")),



    ]
    ),



// Divider(height: 1,color: Colors.tealAccent,)


    ],
    ),
           actions:<Widget>[
         // IconButton(
         //     icon:Icon(
         //         Icons.search,
         //         color:Colors.black
         //     ),
         //     onPressed: (){
         //       Navigator.push(context,
         //           MaterialPageRoute(builder: (context) => const SearchScreen()));
         //     }
         // ),

         IconButton(
             icon:Icon(
                 Icons.notifications_active_outlined,
                 color:Colors.black87
             ),
             onPressed: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const Alert()));
// MaterialPageRoute(builder: (context) => c
             }
         ),

         IconButton(

             icon:Icon(
                 Icons.share,
                 color:Colors.black87
             ),
           onPressed: ()async{
             await Share.share( " LAPTOP EXPERT \n\nSolve All You  Douth regarding Laptop\n"
                 "1.Which Laptop Specification is  Best For You Domain\n"
                 "2. How to Get Maximum Discount on Purchasing Laptop\n"
                 "3. Learn About Student Offer to Get instant 15 % Discount on Laptop\n"
                 "4. Learn About All Pro & Con of Each Laptoop \n"
                 "5. ONLINE Vs OFFLINE From where to Purchase & Many More\n\n"
                 // "4. How to Get Maximum Discount while Purchasing Laptop \n"
                 // "5. Learn About Student Offer to Get instant 15 % Discount on Laptop\n"
                 "Downolads  Our Laptop Helping  App From PlayStore\n\n "
                 "  'https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg\n\n'  ' https://www.youtube.com/'");
           },

         ),



           ]

    ),

           body: Container(
             child: SingleChildScrollView(

               child:
    StreamBuilder<QuerySnapshot>(
    stream: FirebaseFirestore.instance
           .collection('FeaturedImages').orderBy("number")

    // .where ("Price" ,isEqualTo: "70k")
    // .where('Price', isEqualTo: "40k"  )
    // &&
    //
    // stream: FirebaseFirestore.instance
    //     .collection('Products')
    // // .where('Price', isEqualTo: "70k" )
    //     .where('Price', isEqualTo: "40k"  )

           .snapshots(),

    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
         if (snapshot.hasError) {
           return const Text('Something went wrong');
         }

         if (snapshot.connectionState == ConnectionState.waiting) {
           return Container(
             child: const Center(
             child:
             CircularProgressIndicator()

             ),
           );
         }

         if (snapshot.data!.docs.isEmpty) {
           return Center(
           child: Text(
               'You Have not \n\n Active Data !')
           );
         }
         return
           Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [




             // SizedBox(
             //   height: 5,
             // ),


             FakeSearch(),


             SizedBox(
               height: 5,
             ),

             Container(
               height: 185,
               width: 500,

               color: Colors.transparent,
               child: Swiper(
                 // itemHeight: 245,
                 // containerHeight: 155,
                 // containerWidth: 120,
                 // layout: SwiperLayout.TINDER,
                 // itemWidth: 350,
                 itemCount: snapshot.data!.docs.length,
                 viewportFraction: 1,
                 scale: 0.4,
                 // autoplay: true,
                 pagination: const SwiperPagination(
                     margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                     builder: DotSwiperPaginationBuilder(
                         color: Colors.white,
                         activeColor: Colors.black,
                         size: 4.0,
                         activeSize: 10.0)),
                 itemBuilder: (context, index) {
                   return Link(





                     // uri: Uri.parse('/Adv_1'),
                       uri: Uri.parse(snapshot.data!.docs[index]['link']),
                     //   uri: Uri.parse("https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg"),
                       // target: LinkTarget.blank,
                       builder: (context, followLink) =>

                           GestureDetector(
                               onTap: followLink,

                               child: Container(
                                 width: 190,

                                 decoration: BoxDecoration(

                                   color: Colors.transparent,
                                   border: Border.all(
                                       color: Colors.white, width: 2.55),

                                   borderRadius: BorderRadius.circular(5),
                                   // shape: RoundedRectangleBorder(
                                   //
                                   //   borderRadius: BorderRadius
                                   //       .circular(10)),
                                   // child: Image(
                                   image: DecorationImage(

                                     image: NetworkImage(
                                         snapshot.data!
                                             .docs[index]['Images'],


                                     ),
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                               )
                           )
                   );
                 },

               ),
             ),


             Padding(
               padding: const EdgeInsets.symmetric(
                   horizontal: 20, vertical: 8),
               child: CustomText(text: "Shop By Brand ",
                 color: Colors.black,
                 fontSize: 19,
                 weight: FontWeight.w400,

               ),
             ),
             // Text("Shop By Brand",style: TextStyle(color: Colors.red),),
             //


             Container(
               height: 90,
               // width: 50,
               // color: Colors.teal,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ListView.builder(
                     itemCount: images.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index) =>

                         GestureDetector(
                           onTap: () =>
                           {

// Navigator.pushNamed(context, "/thi");

                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context) =>
                                  shopByBrand(
                                     company: companyname[index]
                                 ))),
// MaterialPageRoute(builder: (context) => const SearchScreen()));
                           },
                           // Navigator.pushNamed(context, goview[index]) ,

                           child:
                           Padding(
                             padding: const EdgeInsets.all(1.0),
                             child:
                             Stack(

                               children: <Widget>[


                                 SizedBox(
                                   height: 75,
                                   width: 95,
                                   child: CircleAvatar(
                                     backgroundColor: Colors.grey,
                                     foregroundColor: Colors.teal,


                                     backgroundImage:
                                     AssetImage(images[index])

                                 )

                                 )

                               ],
                             ),

                           ),
                         )
                 ),
               ),
             ),

SizedBox(height: 10,),

             CustomText(text: "   Lightning Deal of the Day >",
               fontSize: 19,
               weight: FontWeight.w400,),
             SizedBox(height: 5,),

    // StreamBuilder<QuerySnapshot>(
    // stream: _prodcutsStream,
    //
    // builder: (BuildContext context,
    // AsyncSnapshot<QuerySnapshot> snapshot) {
    // if (snapshot.hasError) {
    // return const Text('Something went wrong');
    // }
    //
    // if (snapshot.connectionState == ConnectionState.waiting) {
    // return const Center(
    // child: CircularProgressIndicator(),
    // );
    // }
    //
    // if (snapshot.data!.docs.isEmpty) {
    // return const Center(
    // child: Text(
    // 'This category \n\n has no items yet !',
    // textAlign: TextAlign.center,
    // style: TextStyle(
    // fontSize: 26,
    // color: Colors.blueGrey,
    // fontWeight: FontWeight.bold,
    // fontFamily: 'Acme',
    // letterSpacing: 1.5),
    // ));
    // }
    // return

    Container(
               // height: MediaQuery.of(context).size.height*0.6,
               //  height: double.infinity,

                  // height: 400,
                 width: double.infinity,
                 child: StreamBuilder<QuerySnapshot>(
    stream: FirebaseFirestore.instance
        .collection('Lightning Deal').orderBy("number")

    // .where ("Price" ,isEqualTo: "70k")
    // .where('Price', isEqualTo: "40k"  )
    // &&
    //
    // stream: FirebaseFirestore.instance
    //     .collection('Products')
    // // .where('Price', isEqualTo: "70k" )
    //     .where('Price', isEqualTo: "40k"  )

        .snapshots(),

    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.hasError) {
    return const Text('Something went wrong');
    }

    if (snapshot.connectionState == ConnectionState.waiting) {
    return const Center(
    child:
    SizedBox()

    );
    }

    if (snapshot.data!.docs.isEmpty) {
    return Center(
    child: Text(
    'You Have not \n\n Active Data !')
    );
    }
    return Column(
                   mainAxisSize: MainAxisSize.max,
                   children: [


                     SizedBox(
                       //
                       height: 325,
                       width: 600,
                       child: ListView.builder(
                           itemCount: snapshot.data!.docs.length,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (context, index) =>
                           //   Column(
                           // // children: [
                           Link(
                             uri: Uri.parse(snapshot.data!.docs[index]['link']),
                             // target: LinkTarget.blank,
                             builder: (context, followLink) =>


                           Padding(
                             padding: const EdgeInsets.all(4.0),
                             child:
                             Stack(

                               children: <Widget>[


                                 Expanded(
                                   child: SizedBox(
                                     height: 350,
                                      width: MediaQuery.of(context).size.width*0.65,
                                     child: Card(
                                       borderOnForeground: false,
                                       shadowColor: Colors.white,
                                       surfaceTintColor: Colors.white,
                                       elevation: 20,


                                       shape: RoundedRectangleBorder(

                                           borderRadius: BorderRadius
                                               .circular(10),

                                           side: BorderSide(
                                             color: AppColors.Common,
                                             width: 1,)

                                       ),

                                       color: Colors.white,


                                       child: Column(
                                         children: <Widget>[
                                           Expanded(
                                             child: Padding(
                                               padding: const EdgeInsets.all(4.0),
                                               child: Container(



                                                 // color: Colors.red,
                                                 height: 120,

                                                 // width: MediaQuery.of(context).size.width*0.7,

                                                 margin: EdgeInsets.all(5),


                                                 decoration: BoxDecoration(

                                                   // color: Colors.green,

                                                   // border: Border.all(color:Colors.black54,width: 2.55),

                                                     borderRadius: BorderRadius
                                                         .circular(1),

                                                     image: DecorationImage(

                                                       image: NetworkImage(
                                                 snapshot.data!.docs[index]['image']    ),
                                                       fit: BoxFit
                                                           .fitHeight,
                                                     ) //
                                                 ),
                                               ),
                                             ),
                                           ),
                                           //
                                           // Spacer(flex:1),
                                           Divider(height: 5,
                                             thickness: 1,
                                             color: Colors.black,),


                                           SizedBox(
                                             height: 126,
                                             width: double.infinity,
                                             child: CustomText(
                                               text: snapshot.data!.docs[index]['Desc'][0],
                                               fontSize: 15,
                                             height: 1.2,

                                             ),
                                           ),

                                           // Padding(
                                           //   padding: const EdgeInsets.all(2.0),
                                           //   child: Align(
                                           //     alignment: Alignment.topLeft,
                                           //     child: Text(
                                           //
                                           //
                                           //       snapshot.data!.docs[index]['Desc'][1],
                                           //       // textAlign: TextAlign.start,
                                           //       // textDirection: TextDirection.rtl,
                                           //
                                           //       style: TextStyle(fontSize: 14,),),
                                           //   ),
                                           // ),


                                           SizedBox(height: 5,),

                                           //
                                           // Padding(
                                           //   padding: const EdgeInsets.all(2.0),
                                           //   child: Align(
                                           //       alignment: Alignment.topLeft,
                                           //       child: Text(snapshot.data!.docs[index]['Desc'][2],style: TextStyle(fontSize: 14,),)),
                                           // ),
                                           // Padding(
                                           //   padding: const EdgeInsets.all(2.0),
                                           //   child: Align(
                                           //       alignment: Alignment.topLeft,
                                           //       child: Text(snapshot.data!.docs[index]['Desc'][3],style: TextStyle(fontSize: 14,),)),
                                           // ),
                                           // Spacer(flex:1),

                                           SizedBox(
                                             width: MediaQuery.of(context).size.width*0.4,
                                             height: 60,
                                             child: ElevatedButton(
                                               style: ElevatedButton.styleFrom(
                                                 primary:AppColors.Common
                                               ),
                                                 onPressed: followLink, child:

                                             Center(
                                               child: Text(snapshot.data!.docs[index]['Desc'][1].replaceAll("\\n","\n",).replaceAll("  ","",),
                                                 textAlign: TextAlign.center,style: TextStyle(
                                                     color: Colors.black,),),
                                             )
                                             ),
                                           ),
                                           SizedBox(
                                            height: 15,
                                           )


                                           // SizedBox(
                                           //   height: 5,
                                           //     width: 95,
                                           //   child: ListTile(
                                           //     title: CustomText(text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022",fontSize: 11,)
                                           //   ),
                                           // ),
                                           //
                                           //
                                           // Container(
                                           //   height: 25,
                                           //   width: 95,
                                           //   color: Colors.yellow,
                                           // )

                                         ],
                                       ),
                                     ),
                                   ),
                                 ),




                                 // Positioned(
                                 // top: 4,
                                 // right: 5,
                                 // child:   Container(
                                 //
                                 //   height: 59,
                                 //   width: 45,
                                 //   color: Colors.purple,
                                 //
                                 // ),
                                 // )

                               ],
                             ),

                           )
                       ),
                     ),
                     ),]

      );

    }
    )
             ),
                SizedBox(height: 5,),


             CustomText(text: "  News in Market  ",
               fontSize: 19,
               weight: FontWeight.w400,),


             Container(
               // height: MediaQuery.of(context).size.height-380,



                 width: double.infinity,
                 child: StreamBuilder<QuerySnapshot>(
                     stream: FirebaseFirestore.instance
                         .collection('NewMarket').orderBy("number")

                     // .where ("Price" ,isEqualTo: "70k")
                     // .where('Price', isEqualTo: "40k"  )
                     // &&
                     //
                     // stream: FirebaseFirestore.instance
                     //     .collection('Products')
                     // // .where('Price', isEqualTo: "70k" )
                     //     .where('Price', isEqualTo: "40k"  )

                         .snapshots(),

                     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                       if (snapshot.hasError) {
                         return const Text('Something went wrong');
                       }

                       if (snapshot.connectionState == ConnectionState.waiting) {
                         return const Center(
                             child:
                             SizedBox()

                         );
                       }

                       if (snapshot.data!.docs.isEmpty) {
                         return Center(
                             child: Text(
                                 'You Have not \n\n Active Data !')
                         );
                       }
                       return Column(
                           mainAxisSize: MainAxisSize.max,
                           children: [


                             SizedBox(
                               //
                               height: 325,
                               width: 600,
                               child: ListView.builder(
                                 itemCount: snapshot.data!.docs.length,
                                 scrollDirection: Axis.horizontal,
                                 itemBuilder: (context, index) =>
                                 //   Column(
                                 // // children: [
                                 Link(
                                     uri: Uri.parse(snapshot.data!.docs[index]['link']),
                                     // target: LinkTarget.blank,
                                     builder: (context, followLink) =>


                                         Padding(
                                           padding: const EdgeInsets.all(4.0),
                                           child:
                                           Stack(

                                             children: <Widget>[


                                               SizedBox(
                                                 height: 350,
                                                 width: 215,
                                                 child: Card(
                                                   borderOnForeground: false,
                                                   shadowColor: Colors.white,
                                                   surfaceTintColor: Colors.white,
                                                   elevation: 20,


                                                   shape: RoundedRectangleBorder(

                                                       borderRadius: BorderRadius
                                                           .circular(10),

                                                       side: BorderSide(
                                                         color: AppColors.Common,
                                                         width: 1,)

                                                   ),

                                                   color: Colors.white,


                                                   child: Column(

                                                     children: <Widget>[
                                                       Padding(
                                                         padding: const EdgeInsets.all(4.0),
                                                         child: Container(

                                                           // color: Colors.red,
                                                           height: 120,

                                                           // width: 240,

                                                           margin: EdgeInsets.all(5),


                                                           decoration: BoxDecoration(

                                                             // color: Colors.green,

                                                             // border: Border.all(color:Colors.black54,width: 2.55),

                                                               borderRadius: BorderRadius
                                                                   .circular(1),

                                                               image: DecorationImage(

                                                                 image: NetworkImage(
                                                                     snapshot.data!.docs[index]['image']    ),
                                                                 fit: BoxFit
                                                                     .fitHeight,
                                                               ) //
                                                           ),
                                                         ),
                                                       ),
                                                       //
                                                       Divider(height: 5,
                                                         thickness: 1,
                                                         color: Colors.black,),

                                                       Spacer(flex:1),

                                                       CustomText(
                                                         text: snapshot.data!.docs[index]['Desc'][0],
                                                         fontSize: 15,
                                                         height: 1.2,
                                                       ),

                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //     alignment: Alignment.topLeft,
                                                       //     child: Text(
                                                       //
                                                       //
                                                       //       snapshot.data!.docs[index]['Desc'][1],
                                                       //       // textAlign: TextAlign.start,
                                                       //       // textDirection: TextDirection.rtl,
                                                       //
                                                       //       style: TextStyle(fontSize: 14,),),
                                                       //   ),
                                                       // ),


                                                       // SizedBox(height: 5,),

                                                       //
                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //       alignment: Alignment.topLeft,
                                                       //       child: Text(snapshot.data!.docs[index]['Desc'][2],style: TextStyle(fontSize: 14,),)),
                                                       // ),
                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //       alignment: Alignment.topLeft,
                                                       //       child: Text(snapshot.data!.docs[index]['Desc'][3],style: TextStyle(fontSize: 14,),)),
                                                       // ),

                                                       Spacer(flex:1),
                                                       SizedBox(
                                                         width: 120,
                                                         child: ElevatedButton(
                                                             style: ElevatedButton.styleFrom(
                                                                 primary:AppColors.Common
                                                             ),
                                                             onPressed: followLink, child:

                                                         Center(
                                                           child: Text("Checkout at\n  Amazon",
                                                             style: TextStyle(
                                                                 color: Colors.black),),
                                                         )
                                                         ),
                                                       ),
                                                       // SizedBox(
                                                       //   height: 5,
                                                       //     width: 95,
                                                       //   child: ListTile(
                                                       //     title: CustomText(text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022",fontSize: 11,)
                                                       //   ),
                                                       // ),
                                                       //
                                                       //
                                                       // Container(
                                                       //   height: 25,
                                                       //   width: 95,
                                                       //   color: Colors.yellow,
                                                       // )

                                                       SizedBox(
                                                         height: 5,
                                                       )

                                                     ],
                                                   ),
                                                 ),
                                               ),




                                               // Positioned(
                                               // top: 4,
                                               // right: 5,
                                               // child:   Container(
                                               //
                                               //   height: 59,
                                               //   width: 45,
                                               //   color: Colors.purple,
                                               //
                                               // ),
                                               // )

                                             ],
                                           ),

                                         )
                                 ),
                               ),
                             ),]

                       );

                     }
                 )
             ),

             CustomText(text: "  News Accessories  ",
               fontSize: 19,
               weight: FontWeight.w400,),



             Container(
               // height: MediaQuery.of(context).size.height-380,



                 width: double.infinity,
                 child: StreamBuilder<QuerySnapshot>(
                     stream: FirebaseFirestore.instance
                         .collection('Accessories').orderBy("number")

                     // .where ("Price" ,isEqualTo: "70k")
                     // .where('Price', isEqualTo: "40k"  )
                     // &&
                     //
                     // stream: FirebaseFirestore.instance
                     //     .collection('Products')
                     // // .where('Price', isEqualTo: "70k" )
                     //     .where('Price', isEqualTo: "40k"  )

                         .snapshots(),

                     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                       if (snapshot.hasError) {
                         return const Text('Something went wrong');
                       }

                       if (snapshot.connectionState == ConnectionState.waiting) {
                         return const Center(
                             child:
                             SizedBox()

                         );
                       }

                       if (snapshot.data!.docs.isEmpty) {
                         return Center(
                             child: Text(
                                 'You Have not \n\n Active Data !')
                         );
                       }
                       return Column(
                           mainAxisSize: MainAxisSize.max,
                           children: [


                             SizedBox(
                               //
                               height: 290,
                               width: 600,
                               child: ListView.builder(
                                 itemCount: snapshot.data!.docs.length,
                                 scrollDirection: Axis.horizontal,
                                 itemBuilder: (context, index) =>
                                 //   Column(
                                 // // children: [
                                 Link(
                                     uri: Uri.parse(snapshot.data!.docs[index]['link']),
                                     // target: LinkTarget.blank,
                                     builder: (context, followLink) =>


                                         Padding(
                                           padding: const EdgeInsets.all(4.0),
                                           child:
                                           Stack(

                                             children: <Widget>[


                                               SizedBox(
                                                 height: 350,
                                                 width: 215,
                                                 child: Card(
                                                   borderOnForeground: false,
                                                   shadowColor: Colors.white,
                                                   surfaceTintColor: Colors.white,
                                                   elevation: 20,


                                                   shape: RoundedRectangleBorder(

                                                       borderRadius: BorderRadius
                                                           .circular(10),

                                                       side: BorderSide(
                                                         color: AppColors.Common,
                                                         width: 1,)

                                                   ),

                                                   color: Colors.white,


                                                   child: Column(
                                                     children: <Widget>[
                                                       Padding(
                                                         padding: const EdgeInsets.all(4.0),
                                                         child: Container(

                                                           // color: Colors.red,
                                                           height: 120,

                                                           // width: 240,

                                                           margin: EdgeInsets.all(5),


                                                           decoration: BoxDecoration(

                                                             // color: Colors.green,

                                                             // border: Border.all(color:Colors.black54,width: 2.55),

                                                               borderRadius: BorderRadius
                                                                   .circular(1),

                                                               image: DecorationImage(

                                                                 image: NetworkImage(
                                                                     snapshot.data!.docs[index]['image']    ),
                                                                 fit: BoxFit
                                                                     .fitHeight,
                                                               ) //
                                                           ),
                                                         ),
                                                       ),
                                                       //
                                                       Divider(height: 5,
                                                         thickness: 1,
                                                         color: Colors.black,),


                                                       CustomText(
                                                         text: snapshot.data!.docs[index]['Desc'][0],
                                                         fontSize: 15,
                                                         height: 1.2,
                                                       ),

                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //     alignment: Alignment.topLeft,
                                                       //     child: Text(
                                                       //
                                                       //
                                                       //       snapshot.data!.docs[index]['Desc'][1],
                                                       //       // textAlign: TextAlign.start,
                                                       //       // textDirection: TextDirection.rtl,
                                                       //
                                                       //       style: TextStyle(fontSize: 14,),),
                                                       //   ),
                                                       // ),


                                                       SizedBox(height: 5,),

                                                       //
                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //       alignment: Alignment.topLeft,
                                                       //       child: Text(snapshot.data!.docs[index]['Desc'][2],style: TextStyle(fontSize: 14,),)),
                                                       // ),
                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //       alignment: Alignment.topLeft,
                                                       //       child: Text(snapshot.data!.docs[index]['Desc'][3],style: TextStyle(fontSize: 14,),)),
                                                       // ),

                                                       SizedBox(
                                                         width: 120,
                                                         child: ElevatedButton(
                                                             style: ElevatedButton.styleFrom(
                                                                 primary:AppColors.Common
                                                             ),
                                                             onPressed: followLink, child:

                                                         Center(
                                                           child: Text("Checkout at\n  Amazon",
                                                             style: TextStyle(
                                                                 color: Colors.black),),
                                                         )
                                                         ),
                                                       )
                                                       // SizedBox(
                                                       //   height: 5,
                                                       //     width: 95,
                                                       //   child: ListTile(
                                                       //     title: CustomText(text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022",fontSize: 11,)
                                                       //   ),
                                                       // ),
                                                       //
                                                       //
                                                       // Container(
                                                       //   height: 25,
                                                       //   width: 95,
                                                       //   color: Colors.yellow,
                                                       // )

                                                     ],
                                                   ),
                                                 ),
                                               ),




                                               // Positioned(
                                               // top: 4,
                                               // right: 5,
                                               // child:   Container(
                                               //
                                               //   height: 59,
                                               //   width: 45,
                                               //   color: Colors.purple,
                                               //
                                               // ),
                                               // )

                                             ],
                                           ),

                                         )
                                 ),
                               ),
                             ),]

                       );

                     }
                 )
             ),




             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 0.1),
               child: CustomText(text: " KickBack Deals  > ",
                 fontSize: 19,
                 weight: FontWeight.w400,),
             ),


             Container(
               // height: MediaQuery.of(context).size.height-380,



                 width: double.infinity,
                 child: StreamBuilder<QuerySnapshot>(
                     stream: FirebaseFirestore.instance
                         .collection('KicbackDeal').orderBy("number")

                     // .where ("Price" ,isEqualTo: "70k")
                     // .where('Price', isEqualTo: "40k"  )
                     // &&
                     //
                     // stream: FirebaseFirestore.instance
                     //     .collection('Products')
                     // // .where('Price', isEqualTo: "70k" )
                     //     .where('Price', isEqualTo: "40k"  )

                         .snapshots(),

                     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                       if (snapshot.hasError) {
                         return const Text('Something went wrong');
                       }

                       if (snapshot.connectionState == ConnectionState.waiting) {
                         return const Center(
                             child:
                             SizedBox()

                         );
                       }

                       if (snapshot.data!.docs.isEmpty) {
                         return Center(
                             child: Text(
                                 'You Have not \n\n Active Data !')
                         );
                       }
                       return Column(
                           mainAxisSize: MainAxisSize.max,
                           children: [


                             SizedBox(
                               //
                               height: 295,
                               width: 600,
                               child: ListView.builder(
                                 itemCount: snapshot.data!.docs.length,
                                 scrollDirection: Axis.horizontal,
                                 itemBuilder: (context, index) =>
                                 //   Column(
                                 // // children: [
                                 Link(
                                     uri: Uri.parse(snapshot.data!.docs[index]['link']),
                                     // target: LinkTarget.blank,
                                     builder: (context, followLink) =>


                                         Padding(
                                           padding: const EdgeInsets.all(4.0),
                                           child:
                                           Stack(

                                             children: <Widget>[


                                               SizedBox(
                                                 height: 350,
                                                 width: 215,
                                                 child: Card(
                                                   borderOnForeground: false,
                                                   shadowColor: Colors.white,
                                                   surfaceTintColor: Colors.white,
                                                   elevation: 20,


                                                   shape: RoundedRectangleBorder(

                                                       borderRadius: BorderRadius
                                                           .circular(10),

                                                       side: BorderSide(
                                                         color: AppColors.Common,
                                                         width: 1,)

                                                   ),

                                                   color: Colors.white,


                                                   child: Column(
                                                     children: <Widget>[
                                                       Padding(
                                                         padding: const EdgeInsets.all(4.0),
                                                         child: Container(

                                                           // color: Colors.red,
                                                           height: 120,

                                                           // width: 240,

                                                           margin: EdgeInsets.all(5),


                                                           decoration: BoxDecoration(

                                                             // color: Colors.green,

                                                             // border: Border.all(color:Colors.black54,width: 2.55),

                                                               borderRadius: BorderRadius
                                                                   .circular(1),

                                                               image: DecorationImage(

                                                                 image: NetworkImage(
                                                                     snapshot.data!.docs[index]['image']    ),
                                                                 fit: BoxFit
                                                                     .fitHeight,
                                                               ) //
                                                           ),
                                                         ),
                                                       ),
                                                       //
                                                       Divider(height: 5,
                                                         thickness: 1,
                                                         color: Colors.black,),


                                                       CustomText(
                                                         text: snapshot.data!.docs[index]['Desc'][0],
                                                         fontSize: 15,
                                                         height: 1.2,
                                                       ),

                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //     alignment: Alignment.topLeft,
                                                       //     child: Text(
                                                       //
                                                       //
                                                       //       snapshot.data!.docs[index]['Desc'][1],
                                                       //       // textAlign: TextAlign.start,
                                                       //       // textDirection: TextDirection.rtl,
                                                       //
                                                       //       style: TextStyle(fontSize: 14,),),
                                                       //   ),
                                                       // ),


                                                       SizedBox(height: 5,),

                                                       //
                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //       alignment: Alignment.topLeft,
                                                       //       child: Text(snapshot.data!.docs[index]['Desc'][2],style: TextStyle(fontSize: 14,),)),
                                                       // ),
                                                       // Padding(
                                                       //   padding: const EdgeInsets.all(2.0),
                                                       //   child: Align(
                                                       //       alignment: Alignment.topLeft,
                                                       //       child: Text(snapshot.data!.docs[index]['Desc'][3],style: TextStyle(fontSize: 14,),)),
                                                       // ),

                                                       SizedBox(
                                                         width: 120,
                                                         child: ElevatedButton(
                                                             style: ElevatedButton.styleFrom(
                                                                 primary:AppColors.Common
                                                             ),
                                                             onPressed: followLink, child:

                                                         Center(
                                                           child: Text("Checkout at\n  Amazon",
                                                             style: TextStyle(
                                                                 color: Colors.black),),
                                                         )
                                                         ),
                                                       )
                                                       // SizedBox(
                                                       //   height: 5,
                                                       //     width: 95,
                                                       //   child: ListTile(
                                                       //     title: CustomText(text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022",fontSize: 11,)
                                                       //   ),
                                                       // ),
                                                       //
                                                       //
                                                       // Container(
                                                       //   height: 25,
                                                       //   width: 95,
                                                       //   color: Colors.yellow,
                                                       // )

                                                     ],
                                                   ),
                                                 ),
                                               ),




                                               // Positioned(
                                               // top: 4,
                                               // right: 5,
                                               // child:   Container(
                                               //
                                               //   height: 59,
                                               //   width: 45,
                                               //   color: Colors.purple,
                                               //
                                               // ),
                                               // )

                                             ],
                                           ),

                                         )
                                 ),
                               ),
                             ),]

                       );

                     }
                 )
             ),

             // CustomText(text: "Sponsored Deals  >", fontSize: 18,),
             // Text("Sponsored Deals",style: TextStyle(color: Colors.red),),

             //
             // Padding(
             //   padding: const EdgeInsets.only(left: 8),
             //   child: GestureDetector(
             //
             //     child: Wrap(
             //       direction: Axis.horizontal,
             //       runSpacing: 15.0,
             //       spacing: 15,
             //       children: <Widget>[
             //
             //
             //         Container(
             //           height: 145,
             //           width: 135,
             //           color: Colors.green,
             //         ),
             //         // SizedBox(width: 25,),
             //         Container(
             //           height: 145,
             //           width: 135,
             //           color: Colors.red,
             //         ),
             //
             //         Container(
             //           height: 145,
             //           width: 135,
             //           color: Colors.green,
             //         ),
             //         Container(
             //           height: 145,
             //           width: 135,
             //           color: Colors.red,
             //         ),
             //
             //       ],
             //     ),
             //   ),
             // ),


             SizedBox(height: 25,)



           ]
           );
    }
         )
    )
         )
    ),
      );
  }
}











//
//                           SizedBox(
//                             height: 160,
//                               child: new Swiper(
//                                 // outer:false,
//                                 itemBuilder: (c, i) {
//                                   return new Wrap(
//                                     direction: Axis.horizontal,
//                                     runSpacing:  9.0,
//                                     children: <Widget>[
//
//                                     //   Container(
//                                     // height: 115,
//                                     // width: 135,
//                                     // color: Colors.green,
//                                     //   ),
//                                     //   Container(
//                                     // height: 115,
//                                     //     width: 135,
//                                     // color: Colors.red,
//                                     //   ),
//                                     //
//                                     //   Container(
//                                     // height: 135,
//                                     //     width: 35,
//                                     //
//                                     // color: Colors.red,
//                                     //   ),
//                                     //
//                                     //   Container(
//                                     // color: Colors.red,
//                                     //   ),
//
// Container(
//   height: 125,
//   width: 125,
//   color: Colors.red,
//   child: CustomText(text: "$i",)
// ),
//                                       SizedBox(
//                                         height:100,
//                                     // width: MediaQuery.of(context).size.width/4,
//                                     width: 125,
//                                     child: new Column(
//                                       // mainAxisSize: MainAxisSize.min,
//                                       children: <Widget>[
//                                         new SizedBox(
//                                           child:  new Container(
//                                             height: 100,
//                                             width: 100,
//                                             color:Colors.purple,
//                                             child: Card(
//
//                                               elevation: 2,
//                                               color: Colors.yellow,
//                                             ),
//                                             // child: new Image.network("https://fuss10.elemecdn.com/c/db/d20d49e5029281b9b73db1c5ec6f9jpeg.jpeg%3FimageMogr/format/webp/thumbnail/!90x90r/gravity/Center/crop/90x90"),
//                                           ),
//                                           // height: MediaQuery.of(context).size.width * 0.32,
//                                           // width: MediaQuery.of(context).size.width * 0.22,
//                                         ),
//                                         // new Padding(padding: new EdgeInsets.only(top:6.0),child: new Text("$i",style: TextStyle(color:Colors.purple),),)
//                                       ],
//                                     ),
//
//                                       ),
//                                     ],
//                                   );
//                                 },
//                                 // pagination: new SwiperPagination(
//                                 //     margin: new EdgeInsets.all(5.0)
//                                 // ),
//                                 itemCount: 3,
//                               ),
//
//                           ),
//
//
//                           SizedBox(height: 115,),
//
//

//
// SizedBox(
// width: 65,
// ),
// SizedBox(
// width: 60,
// child: ElevatedButton
// (
// style: ElevatedButton.styleFrom(
// primary:  Colors.white,
// shadowColor: Colors.black54,
// elevation: 0.0
// ),
//
// onPressed: ()async{
// // await Share.share( " PrimeStar\nStream  free movie & web series  \n\n"
// //     "  'https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg\n\n'  ' https://www.youtube.com/'");
// },
//
// child: Icon(Icons.search_off,color: Colors.black,)),
// ),
//
// SizedBox(
// width: 50,
// child: ElevatedButton
// (
//
// style: ElevatedButton.styleFrom(
//
// primary:  Colors.white,
// shadowColor: Colors.black54,
// elevation: 0.0
// ),
//
// onPressed: ()async{
// // await Share.share( " PrimeStar\nStream  free movie & web series  \n\n"
// //     "  'https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg\n\n'  ' https://www.youtube.com/'");
// },
//
// child: Icon(Icons.share,color: Colors.black,)),
// ),
//
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20, vertical: 8),
// child: CustomText(text: "Recently Views >",
// color: Colors.black,
// fontSize: 21,
// weight: FontWeight.w700,),
// ),
//
//
// Container(
// // height: MediaQuery.of(context).size.height-380,
//
//
// width: double.infinity,
// child: Stack(
//
// children: <Widget>[
// Container(
// height: 320,
// // width: 412,
//
// child: Column(
// mainAxisSize: MainAxisSize.max,
// children: [
//
//
// SizedBox(
// //
// height: 285,
// width: 400,
// child: ListView.builder(
// itemCount: 6,
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index) =>
// //   Column(
// // // children: [
// // Link(
// //   uri: Uri.parse(Homeadd[index].link),
// //   // target: LinkTarget.blank,
// //   builder: (context, followLink) =>
//
//
// GestureDetector(
// onTap: () => () {},
// // Navigator.pushNamed(context, goview[index]) ,
//
// child:
// Padding(
// padding: const EdgeInsets.all(4.0),
// child:
// Stack(
//
// children: <Widget>[
//
//
// SizedBox(
// height: 290,
// width: 220,
// child: Card(
// borderOnForeground: false,
// shadowColor: Colors.white,
// surfaceTintColor: Colors.white,
// elevation: 20,
//
//
// shape: RoundedRectangleBorder(
//
// borderRadius: BorderRadius
//     .circular(10),
//
// side: BorderSide(
// color: Colors.tealAccent,
// width: 1,)
//
// ),
//
// color: Colors.white,
//
//
// child: Column(
// children: <Widget>[
// Container(
//
// // color: Colors.red,
// height: 120,
//
// width: 210,
//
// margin: EdgeInsets.all(5),
//
//
// decoration: BoxDecoration(
//
// // color: Colors.green,
//
// // border: Border.all(color:Colors.black54,width: 2.55),
//
// borderRadius: BorderRadius
//     .circular(1),
//
// image: DecorationImage(
//
// image: NetworkImage(
// images1[index]),
// fit: BoxFit.fill,
// ) //
// ),
// ),
// //
// Divider(height: 5,
// thickness: 5,
// color: Colors.black,),
//
//
// CustomText(
// text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022\n",
// fontSize: 18,),
// CustomText(
// text: "Price: Rs: 60000",
// fontSize: 20,),
//
// // SizedBox(
// //   height: 5,
// //     width: 95,
// //   child: ListTile(
// //     title: CustomText(text: "IPHONE Z SERIES 512 GB\n 8GB RAM I7 GENERATION 2022",fontSize: 11,)
// //   ),
// // ),
// //
// //
// // Container(
// //   height: 25,
// //   width: 95,
// //   color: Colors.yellow,
// // )
//
// ],
// ),
// ),
// ),
//
//
// Positioned(
// top: 6,
// left: 5,
// // right: 12,
// // bottom: 1,
// child: Container(
//
// height: 55,
// width: 45,
//
// color: Colors.purple,
//
// ),
// ),
//
//
// // Positioned(
// // top: 4,
// // right: 5,
// // child:   Container(
// //
// //   height: 59,
// //   width: 45,
// //   color: Colors.purple,
// //
// // ),
// // )
//
// ],
// ),
//
// ),
// )
// ),
// ),
//
// ],
// ),
// ),
// ]
// )
// ),
