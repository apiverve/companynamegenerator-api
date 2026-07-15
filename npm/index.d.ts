declare module '@apiverve/companynamegenerator' {
  export interface companynamegeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface companynamegeneratorResponse {
    status: string;
    error: string | null;
    data: CompanyNameGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CompanyNameGeneratorData {
      keyword: null | string;
      count:   null | string;
      names:   (null | string)[];
  }

  export default class companynamegeneratorWrapper {
    constructor(options: companynamegeneratorOptions);

    execute(callback: (error: any, data: companynamegeneratorResponse | null) => void): Promise<companynamegeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: companynamegeneratorResponse | null) => void): Promise<companynamegeneratorResponse>;
    execute(query?: Record<string, any>): Promise<companynamegeneratorResponse>;
  }
}
