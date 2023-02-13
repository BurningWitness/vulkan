{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264SessionParametersAddInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264SessionParametersAddInfoEXT" #-} VkVideoEncodeH264SessionParametersAddInfoEXT =
       VkVideoEncodeH264SessionParametersAddInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stdSPSCount :: #{type uint32_t}
         , pStdSPSs :: Ptr StdVideoH264SequenceParameterSet
         , stdPPSCount :: #{type uint32_t}
         , pStdPPSs :: Ptr StdVideoH264PictureParameterSet -- ^ List of Picture Parameters associated with the spsStd, above
         }

instance Storable VkVideoEncodeH264SessionParametersAddInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264SessionParametersAddInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264SessionParametersAddInfoEXT}

  peek ptr = 
    VkVideoEncodeH264SessionParametersAddInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stdSPSCount" ptr)
       <*> peek (offset @"pStdSPSs" ptr)
       <*> peek (offset @"stdPPSCount" ptr)
       <*> peek (offset @"pStdPPSs" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stdSPSCount" ptr val
    pokeField @"pStdSPSs" ptr val
    pokeField @"stdPPSCount" ptr val
    pokeField @"pStdPPSs" ptr val

instance Offset "sType" VkVideoEncodeH264SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersAddInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersAddInfoEXT, pNext}

instance Offset "stdSPSCount" VkVideoEncodeH264SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersAddInfoEXT, stdSPSCount}

instance Offset "pStdSPSs" VkVideoEncodeH264SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersAddInfoEXT, pStdSPSs}

instance Offset "stdPPSCount" VkVideoEncodeH264SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersAddInfoEXT, stdPPSCount}

instance Offset "pStdPPSs" VkVideoEncodeH264SessionParametersAddInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264SessionParametersAddInfoEXT, pStdPPSs}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264SessionParametersAddInfoEXT where

#endif