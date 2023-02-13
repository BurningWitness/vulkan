{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264RateControlLayerInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH264FrameSizeEXT
import Vulkan.Types.Struct.VkVideoEncodeH264QpEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264RateControlLayerInfoEXT" #-} VkVideoEncodeH264RateControlLayerInfoEXT =
       VkVideoEncodeH264RateControlLayerInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , temporalLayerId :: #{type uint8_t}
         , useInitialRcQp :: VkBool32
         , initialRcQp :: VkVideoEncodeH264QpEXT
         , useMinQp :: VkBool32
         , minQp :: VkVideoEncodeH264QpEXT
         , useMaxQp :: VkBool32
         , maxQp :: VkVideoEncodeH264QpEXT
         , useMaxFrameSize :: VkBool32
         , maxFrameSize :: VkVideoEncodeH264FrameSizeEXT
         }

instance Storable VkVideoEncodeH264RateControlLayerInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264RateControlLayerInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264RateControlLayerInfoEXT}

  peek ptr = 
    VkVideoEncodeH264RateControlLayerInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"temporalLayerId" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"useInitialRcQp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"initialRcQp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"useMinQp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minQp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"useMaxQp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxQp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"useMaxFrameSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxFrameSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"temporalLayerId" ptr val
    pokeField @"useInitialRcQp" ptr val
    pokeField @"initialRcQp" ptr val
    pokeField @"useMinQp" ptr val
    pokeField @"minQp" ptr val
    pokeField @"useMaxQp" ptr val
    pokeField @"maxQp" ptr val
    pokeField @"useMaxFrameSize" ptr val
    pokeField @"maxFrameSize" ptr val

instance Offset "sType" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, pNext}

instance Offset "temporalLayerId" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, temporalLayerId}

instance Offset "useInitialRcQp" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, useInitialRcQp}

instance Offset "initialRcQp" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, initialRcQp}

instance Offset "useMinQp" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, useMinQp}

instance Offset "minQp" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, minQp}

instance Offset "useMaxQp" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, useMaxQp}

instance Offset "maxQp" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, maxQp}

instance Offset "useMaxFrameSize" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, useMaxFrameSize}

instance Offset "maxFrameSize" VkVideoEncodeH264RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264RateControlLayerInfoEXT, maxFrameSize}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264RateControlLayerInfoEXT where

#endif