import '../../data/models/art_details_model.dart';
import '../../data/models/artist_details_model.dart';
import '../../data/models/event_details_model.dart';
import '../../data/models/response_model.dart';

class AppConstants {
  static String defaultImageUrl =
      "https://fcdn.goodq.top/caches/0404edc22d8e1cfda07cee271b22b7fc/aHR0cDovL3d3dy5mdWRhbnNlbnNvci5jb20vcWZ5LWNvbnRlbnQvdXBsb2Fkcy8yMDI0LzAzLzE3MTE3MTA3ODg2NjA2YTI0NDgwYTVlMTc5OS0zMTl4MzE5LmpwZw_p_p100_p_3D_p_p100_p_3D.jpg";

  static List<ArtDetails> sampleArtDetails = [
    ArtDetails(
      art: Art(
        id: "1",
        title: "Brown Rice I",
        type: "Acrylic on Canvas",
        description:
            "A beautiful abstract piece by Neleisha Weerasinghe, exploring form and texture.",
        size: '16" x 19.5"',
        imgUrl:
            "https://curadoartspace.com/wp-content/uploads/2025/11/website-2025-11-07T104520.449.jpg",
      ),
      designer: Designer(
        id: "1",
        name: "Neleisha Weerasinghe",
        url:
            "https://curadoartspace.com/wp-content/uploads/2025/09/website-2025-09-10T100915.322.jpg",
      ),
    ),
    ArtDetails(
      art: Art(
        id: "2",
        title: "Isurumuniya Rock Temple",
        type: "Oil on Canvas",
        description:
            "Ranjith Perera is a narrative realist whose oil and charcoal paintings bring to life the quiet dignity of rural Sri Lanka,",
        size: '20" x 29"',
        imgUrl:
            "https://curadoartspace.com/wp-content/uploads/2025/10/website-2025-10-24T141452.644.jpg",
      ),
      designer: Designer(
        id: "2",
        name: "Ranjith Perera",
        url:
            "https://curadoartspace.com/wp-content/uploads/2025/10/website-2025-10-27T111700.621.jpg",
      ),
    ),
    ArtDetails(
      art: Art(
        id: "3",
        title: "The World In Her Eyes",
        type: "Mixed media on Canvas",
        description:
            "Ruwangi has also ventured into muralism,contributing her art to public spaces across Sri Lanka,",
        size: '26" x 30"',
        imgUrl:
            "https://curadoartspace.com/wp-content/uploads/2025/11/website-2025-09-15T151410.274.jpg",
      ),
      designer: Designer(
        id: "3",
        name: "Ruwangi Amarasinghe",
        url:
            "https://curadoartspace.com/wp-content/uploads/2025/09/website-87.jpg",
      ),
    ),
    ArtDetails(
      art: Art(
        id: "4",
        title: "A Scene in Galle",
        type: "Water Color on paper",
        description:
            "Anura Dahanayake was employed in an office when his wife, who was his fiancée at the time, came across his small drawings created during his leisure hours.",
        size: '59" x 33.5"',
        imgUrl:
            "https://curadoartspace.com/wp-content/uploads/2025/06/j-68.jpg",
      ),
      designer: Designer(
        id: "4",
        name: "Anura Dahanayake",
        url:
            "https://curadoartspace.com/wp-content/uploads/2025/10/website-2025-10-23T120548.581.jpg",
      ),
    ),
    ArtDetails(
      art: Art(
        id: "5",
        title: "Tropical Maiden 4",
        type: "Mixed Media & Acrylic on Coffee Stained Paper",
        description:
            "Shane Walgama’s expressive piece on paper stained with coffee.",
        size: '8.5" x 13"',
        imgUrl:
            "https://curadoartspace.com/wp-content/uploads/2025/11/website-2025-11-06T151656.243.jpg",
      ),
      designer: Designer(
        id: "artist5",
        name: "Shane Walgama",
        url:
            "https://curadoartspace.com/wp-content/uploads/2025/10/website-2025-10-23T124034.223.jpg",
      ),
    ),
  ];

  static List<EventDetails> sampleEvents = [
    EventDetails(
      id: "ceylon-moments-2025",
      imgUrl:
          "https://curadoartspace.com/wp-content/uploads/2025/11/Curado-website-exhibition-posters-7.jpg",
      title: "Ceylon : Moments In Time",
      date: "2025-11-21 - 2025-12-04",
      time: "10:00 AM – 05:00 PM",
      host: "Curado Art Space",
      venue: "Curado Art Space",
      type: "Art Work",
      about:
          "A curated exhibition showcasing Sri Lankan art that captures the essence of time and change.",
      gallary: [
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-21-at-15.51.27-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-21-at-15.51.30.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-21-at-15.51.29-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-21-at-15.51.25-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-21-at-15.51.25.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-21-at-15.51.28-1.jpeg",
      ],
    ),
    EventDetails(
      id: "world-of-textiles-2025",
      imgUrl:
          "https://curadoartspace.com/wp-content/uploads/2025/11/Curado-website-exhibition-posters-2.jpg",
      title: "The World of Textiles",
      date: "2025-11-01",
      time: "10:00 AM – 05:00 PM",
      host: "Curado Art Space",
      venue: "Curado Art Space",
      type: "Exhibition",
      about:
          "An exhibition exploring the rich history and contemporary reinterpretation of textiles in Sri Lankan art.",
      gallary: [
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-04-at-14.20.06-8-scaled.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-04-at-14.20.06-7-scaled.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-04-at-14.20.06-6-scaled.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/11/WhatsApp-Image-2025-11-04-at-14.20.06-scaled.jpeg",
      ],
    ),
    EventDetails(
      id: "sankhara-2025",
      imgUrl:
          "https://curadoartspace.com/wp-content/uploads/2025/09/Curado-website-exhibition-posters-3.jpg",
      title: "SANKHĀRĀ",
      date: "2025-10-10",
      time: "10:00 AM – 05:00 PM",
      host: "Curado Art Space",
      venue: "Curado Art Space",
      type: "Orientation",
      about:
          "SANKHĀRĀ is a contemplative exhibition that invites reflection on thoughts, formations, and experiences.",
      gallary: [
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-13-at-12.39.42-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-13-at-12.39.42.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-13-at-12.39.40-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-13-at-12.39.39.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-13-at-12.39.40-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-13-at-12.39.39-1.jpeg",
      ],
    ),
    EventDetails(
      id: "for-my-brother-2025",
      imgUrl:
          "https://curadoartspace.com/wp-content/uploads/2025/09/Curado-website-exhibition-posters-1.jpg",
      title: "For My Brother",
      date: "2025-09-30",
      time: "10:00 AM – 05:00 PM",
      host: "Curado Art Space",
      venue: "Curado Art Space",
      type: "Exhibition",
      about:
          "An emotional exhibition dedicated to the memory of loved ones, expressed through painting and mixed media.",
      gallary: [
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-10-at-14.32.20.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-10-at-14.32.18-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-10-at-14.32.17.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-10-10-at-14.32.18.jpeg",
      ],
    ),
    EventDetails(
      id: "legends-2025",
      imgUrl:
          "https://curadoartspace.com/wp-content/uploads/2025/07/Curado-website-exhibition-posters.jpg",
      title: "Legends",
      date: "2025-08-01",
      time: "10:00 AM – 05:00 PM",
      host: "Curado Art Space",
      venue: "Curado Art Space",
      type: "Exhibition",
      about:
          "Legends — An exhibition that brings to life the stories and myths that have shaped Sri Lankan culture.",
      gallary: [
        "https://curadoartspace.com/wp-content/uploads/2025/07/WhatsApp-Image-2025-08-04-at-10.43.45.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/07/WhatsApp-Image-2025-08-04-at-10.43.44-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/07/WhatsApp-Image-2025-08-04-at-10.43.44.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/07/WhatsApp-Image-2025-08-04-at-10.43.43-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/07/WhatsApp-Image-2025-08-04-at-10.43.42-1.jpeg",
        "https://curadoartspace.com/wp-content/uploads/2025/07/WhatsApp-Image-2025-08-04-at-10.43.42.jpeg",
      ],
    ),
  ];

  static List<CommonResponse> upComingPastEvent = [
    CommonResponse(id: "UPC", description: "UPCOMING EVENTS"),
    CommonResponse(id: "PAS", description: "PAST EVENTS"),
  ];
  static List<String> eventTypesList = [
    "Exhibition",
    "Orientation",
    "Art Work",
  ];

  static final List<ArtistDetails> sampleArtistDetailsList = [
    ArtistDetails(
      id: "pradeep-chandrasiri",
      name: "Pradeep Chandrasiri",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/09/website-100.jpg",
      about: "Pradeep Chandrasiri is a celebrated Sri Lankan visual artist and scenographer with over 25 years of experience. His work blends traditional Sri Lankan motifs with contemporary visual language, exploring human emotions and societal narratives through bold compositions and intricate detailing.",
    ),
    ArtistDetails(
      id: "ruwangi-amarasinghe",
      name: "Ruwangi Amarasinghe",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/09/website-87.jpg",
      about: "Ruwangi Amarasinghe is an accomplished painter and illustrator known for her vibrant use of acrylics and mixed media. She combines realistic representation with abstract elements, often reflecting on cultural identity and personal introspection in her pieces.",
    ),
    ArtistDetails(
      id: "neleisha-weerasinghe",
      name: "Neleisha Weerasinghe",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/09/website-2025-09-10T100915.322.jpg",
      about: "Neleisha Weerasinghe is recognized for her expressive landscapes and innovative use of color. Her work frequently explores the interplay between natural and urban environments, evoking both serenity and emotional depth through bold textures and striking palettes.",
    ),
    ArtistDetails(
      id: "shane-walgama",
      name: "Shane Walgama",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/10/website-2025-10-23T124034.223.jpg",
      about: "Shane Walgama is a self-taught artist whose work draws inspiration from pre-colonial Sri Lankan history and mythology. He employs a wide range of media, including ink, watercolor, and charcoal, to weave compelling narratives that bridge the past and present.",
    ),
    ArtistDetails(
      id: "dillai-joseph",
      name: "Dillai Joseph",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/10/website-2025-10-24T114650.825.jpg",
      about: "Dillai Joseph is a painter and visual storyteller who works primarily with watercolors, acrylics, and oils. His art explores the human condition and its interaction with the environment, capturing emotion and movement through dynamic brushwork and layered textures.",
    ),
    ArtistDetails(
      id: "shyamali-perera",
      name: "Shyamali Perera",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/09/website-95.jpg",
      about: "With over forty years of artistic experience, Shyamali Perera fuses classical techniques with contemporary aesthetics. Her work spans portraiture, landscapes, and abstract forms, emphasizing balance, color harmony, and emotional resonance.",
    ),
    ArtistDetails(
      id: "catharina-danial",
      name: "Catharina Danial",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/09/website-88.jpg",
      about: "Catharina Danial is a contemporary artist from Jaffna whose work explores themes of identity, displacement, and memory. She utilizes mixed media, layering textures and colors to create visually rich narratives that engage with personal and collective histories.",
    ),
    ArtistDetails(
      id: "anura-dahanayake",
      name: "Anura Dahanayake",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/10/website-2025-10-23T120548.581.jpg",
      about: "Anura Dahanayake specializes in abstract and semi-abstract paintings that investigate the relationship between form, color, and emotion. His work often incorporates dynamic textures and bold gestures to evoke introspection and mood.",
    ),
    ArtistDetails(
      id: "aparna-binduhewa",
      name: "Aparna Binduhewa",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/09/website-2025-09-12T145153.003.jpg",
      about: "Aparna Binduhewa is known for her intricate mixed-media work that fuses traditional techniques with contemporary themes. Her art often addresses environmental concerns, cultural heritage, and personal identity.",
    ),
    ArtistDetails(
      id: "aruni-wijegunawardene",
      name: "Aruni Wijegunawardene",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/10/website-2025-10-23T120850.296.jpg",
      about: "Aruni Wijegunawardene’s paintings and illustrations explore the nuances of human relationships and social interactions. She uses delicate brushwork and muted palettes to convey subtle emotions and layered storytelling.",
    ),
    ArtistDetails(
      id: "asela-abeywardene",
      name: "Asela Abeywardene",
      imgUrl: "https://curadoartspace.com/wp-content/uploads/2025/11/website-2025-11-04T122659.803.jpg",
      about: "Asela Abeywardene is a contemporary visual artist whose work spans landscapes, abstract compositions, and conceptual art. He focuses on texture, color contrast, and the interplay of light and shadow to evoke mood and atmosphere.",
    ),
  ];

}
