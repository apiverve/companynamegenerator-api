declare module '@apiverve/companynamegenerator' {
  export interface companynamegeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface companynamegeneratorResponse {
    status: string;
    error: string | null;
    data: CompanyNameGeneratorData;
    code?: number;
  }


  interface CompanyNameGeneratorData {
      keyword: string;
      count:   string;
      names:   string[];
  }

  export default class companynamegeneratorWrapper {
    constructor(options: companynamegeneratorOptions);

    execute(callback: (error: any, data: companynamegeneratorResponse | null) => void): Promise<companynamegeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: companynamegeneratorResponse | null) => void): Promise<companynamegeneratorResponse>;
    execute(query?: Record<string, any>): Promise<companynamegeneratorResponse>;
  }
}
