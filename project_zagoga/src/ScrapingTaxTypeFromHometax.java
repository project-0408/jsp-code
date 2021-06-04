import java.util.HashMap;
import java.util.Map;

import javax.xml.ws.Response;

public class ScrapingTaxTypeFromHometax {

    public ScrapingTaxTypeFromHometax() {
    }
    
    public String selectTaxTypeFromHometax(String businessRegNo) {
        String trtCntn = getTaxTypeFromHometax(businessRegNo);
        return trtCntn;
    }
    
    private String getTaxTypeFromHometax(String txprDscmNo) {
        String trtCntn = null;

        if (txprDscmNo == null || txprDscmNo.equals("")) {
            return "조회할 사업자 등록 번호를 입력해주세요.";
        }
        if (txprDscmNo.length() != 10) {
            return "조회 할 사업자등록번호를 올바르게 입력해주세요.";
        }

        String dongCode = txprDscmNo.substring(3, 5);
        String url = "https://teht.hometax.go.kr/wqAction.do?actionId=ATTABZAA001R08&screenId=UTEABAAA13&popupYn=false&realScreenId=";

        Map<String, String> header = new HashMap<>();
        header.put("Accept", "application/xml; charset=UTF-8");
        header.put("Accept-Encoding", "gzip, deflate, br");
        header.put("Accept-Language", "en-US,en;q=0.9,ko;q=0.8");
        header.put("Connection", "keep-alive");
        header.put("Content-Length", "257");
        header.put("Content-Type", "application/xml; charset=UTF-8");
        header.put("Origin", "https://teht.hometax.go.kr");
        header.put("Referer", "https://teht.hometax.go.kr/websquare/websquare.html?w2xPath=/ui/ab/a/a/UTEABAAA13.xml");
        header.put("Sec-Fetch-Mode", "cors");
        header.put("Sec-Fetch-Site", "same-origin");
        header.put("User-Agent",
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.272 Whale/2.9.117.22 Safari/537.36");
                
        final String CRLF = "\n";
        StringBuilder ub = new StringBuilder();
        ub.append("<map id=\"ATTABZAA001R08\">" + CRLF);
        ub.append(" <pubcUserNo/>" + CRLF);
        ub.append(" <mobYn>N</mobYn>" + CRLF);
        ub.append(" <inqrTrgtClCd>1</inqrTrgtClCd>" + CRLF);
        ub.append(" <txprDscmNo>" + txprDscmNo + "</txprDscmNo>" + CRLF);
        ub.append(" <dongCode>" + dongCode + "</dongCode>" + CRLF); 
        ub.append(" <pubSearch>Y</pubSearch>" + CRLF);
        ub.append(" <map id=\"userReqInfoVO\"/>" + CRLF);
        ub.append("</map>" + CRLF);

        String userBody = ub.toString();

        try { 
            // 요청하는 부분 하려면 코딩해야하는데, 라이브러리 다운 받아야함 ^0^..
            // 나중에 되면 해보기
        } catch (Exception e) {
            
        }

        return trtCntn;

    }
            








}