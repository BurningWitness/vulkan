{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265RateControlInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEncodeH265RateControlStructureEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265RateControlInfoEXT" #-} VkVideoEncodeH265RateControlInfoEXT =
       VkVideoEncodeH265RateControlInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , gopFrameCount :: #{type uint32_t}
         , idrPeriod :: #{type uint32_t}
         , consecutiveBFrameCount :: #{type uint32_t}
         , rateControlStructure :: VkVideoEncodeH265RateControlStructureEXT
         , subLayerCount :: #{type uint8_t}
         }

instance Storable VkVideoEncodeH265RateControlInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265RateControlInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265RateControlInfoEXT}

  peek ptr = 
    VkVideoEncodeH265RateControlInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"gopFrameCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"idrPeriod" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"consecutiveBFrameCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rateControlStructure" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subLayerCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"gopFrameCount" ptr val
    pokeField @"idrPeriod" ptr val
    pokeField @"consecutiveBFrameCount" ptr val
    pokeField @"rateControlStructure" ptr val
    pokeField @"subLayerCount" ptr val

instance Offset "sType" VkVideoEncodeH265RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlInfoEXT, pNext}

instance Offset "gopFrameCount" VkVideoEncodeH265RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlInfoEXT, gopFrameCount}

instance Offset "idrPeriod" VkVideoEncodeH265RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlInfoEXT, idrPeriod}

instance Offset "consecutiveBFrameCount" VkVideoEncodeH265RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlInfoEXT, consecutiveBFrameCount}

instance Offset "rateControlStructure" VkVideoEncodeH265RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlInfoEXT, rateControlStructure}

instance Offset "subLayerCount" VkVideoEncodeH265RateControlInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlInfoEXT, subLayerCount}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265RateControlInfoEXT where

#endif