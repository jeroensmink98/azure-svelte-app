import { XMLParser } from 'fast-xml-parser';

export interface NewsItem {
    title: string;
    link: string;
    description?: string;
    pubDate: string;
    category?: string;
    imageUrl?: string;
}

export async function getNews(): Promise<NewsItem[]> {
    const response = await fetch('https://www.nu.nl/rss');
    const xmlData = await response.text();
    
    const parser = new XMLParser({
        ignoreAttributes: false,
        attributeNamePrefix: ''
    });
    
    const result = parser.parse(xmlData);
    
    console.log(result.channel);
    return result.rss.channel.item.map((item: any) => ({
        title: item.title,
        link: item.link,
        description: item.description,
        pubDate: item.pubDate,
        category: item.category,
        imageUrl: item.enclosure?.url
    }));
}
