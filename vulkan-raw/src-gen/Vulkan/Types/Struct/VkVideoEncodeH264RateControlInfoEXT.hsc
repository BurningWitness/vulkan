{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264RateControlInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEncodeH264RateControlStructureEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264RateControlInfoEXT" #-} VkVideoEncodeH264RateControlInfoEXT =
       VkVideoEncodeH264RateControlInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , gopFrameCount :: #{type uint32_t}
         , idrPeriod :: #{type uint32_t}
         , consecutiveBFrameCount :: #{type uint32_t}
         , rateControlStructure :: VkVideoEncodeH264RateControlStructureEXT
         , temporalLayerCount :: #{type uint8_t}
         }

instance Storable VkVideoEncodeH264RateControlInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264RateControlInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264RateControlInfoEXT}

  peek ptr = 
    VkVideoEncodeH264RateControlInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"gopFrameCount" ptr)
       <*> peek (offset @"idrPeriod" ptr)
       <*> peek (offset @"consecutiveBFrameCount" ptr)
       <*> peek (offset @"rateControlStructure" ptr)
       <*> peek (offset @"temporalLayerCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"gopFrameCount" ptr val
    pokeField @"idrPeriod" ptr val
    pokeField @"consecutiveBFrameCount" ptr val
    pokeField @"rateControlStructure" ptr val
    pokeField @"temporalLayerCount" ptr val

instance Offset "sType" VkVideoEncodeH264RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlInfoEXT, pNext}

instance Offset "gopFrameCount" VkVideoEncodeH264RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlInfoEXT, gopFrameCount}

instance Offset "idrPeriod" VkVideoEncodeH264RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlInfoEXT, idrPeriod}

instance Offset "consecutiveBFrameCount" VkVideoEncodeH264RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlInfoEXT, consecutiveBFrameCount}

instance Offset "rateControlStructure" VkVideoEncodeH264RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlInfoEXT, rateControlStructure}

instance Offset "temporalLayerCount" VkVideoEncodeH264RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlInfoEXT, temporalLayerCount}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264RateControlInfoEXT where

#endif