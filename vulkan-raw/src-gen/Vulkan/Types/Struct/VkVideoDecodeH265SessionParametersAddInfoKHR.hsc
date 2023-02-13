{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h265

module Vulkan.Types.Struct.VkVideoDecodeH265SessionParametersAddInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH265SessionParametersAddInfoKHR" #-} VkVideoDecodeH265SessionParametersAddInfoKHR =
       VkVideoDecodeH265SessionParametersAddInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stdVPSCount :: #{type uint32_t}
         , pStdVPSs :: Ptr StdVideoH265VideoParameterSet
         , stdSPSCount :: #{type uint32_t}
         , pStdSPSs :: Ptr StdVideoH265SequenceParameterSet
         , stdPPSCount :: #{type uint32_t}
         , pStdPPSs :: Ptr StdVideoH265PictureParameterSet -- ^ List of Picture Parameters associated with the spsStd, above
         }

instance Storable VkVideoDecodeH265SessionParametersAddInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeH265SessionParametersAddInfoKHR}
  alignment _ = #{alignment VkVideoDecodeH265SessionParametersAddInfoKHR}

  peek ptr = 
    VkVideoDecodeH265SessionParametersAddInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stdVPSCount" ptr)
       <*> peek (offset @"pStdVPSs" ptr)
       <*> peek (offset @"stdSPSCount" ptr)
       <*> peek (offset @"pStdSPSs" ptr)
       <*> peek (offset @"stdPPSCount" ptr)
       <*> peek (offset @"pStdPPSs" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stdVPSCount" ptr val
    pokeField @"pStdVPSs" ptr val
    pokeField @"stdSPSCount" ptr val
    pokeField @"pStdSPSs" ptr val
    pokeField @"stdPPSCount" ptr val
    pokeField @"pStdPPSs" ptr val

instance Offset "sType" VkVideoDecodeH265SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265SessionParametersAddInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH265SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265SessionParametersAddInfoKHR, pNext}

instance Offset "stdVPSCount" VkVideoDecodeH265SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265SessionParametersAddInfoKHR, stdVPSCount}

instance Offset "pStdVPSs" VkVideoDecodeH265SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265SessionParametersAddInfoKHR, pStdVPSs}

instance Offset "stdSPSCount" VkVideoDecodeH265SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265SessionParametersAddInfoKHR, stdSPSCount}

instance Offset "pStdSPSs" VkVideoDecodeH265SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265SessionParametersAddInfoKHR, pStdSPSs}

instance Offset "stdPPSCount" VkVideoDecodeH265SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265SessionParametersAddInfoKHR, stdPPSCount}

instance Offset "pStdPPSs" VkVideoDecodeH265SessionParametersAddInfoKHR where
  rawOffset = #{offset VkVideoDecodeH265SessionParametersAddInfoKHR, pStdPPSs}

#else

module Vulkan.Types.Struct.VkVideoDecodeH265SessionParametersAddInfoKHR where

#endif