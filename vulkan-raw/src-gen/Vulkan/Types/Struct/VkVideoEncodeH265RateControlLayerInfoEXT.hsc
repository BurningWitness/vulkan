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

module Vulkan.Types.Struct.VkVideoEncodeH265RateControlLayerInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH265FrameSizeEXT
import Vulkan.Types.Struct.VkVideoEncodeH265QpEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265RateControlLayerInfoEXT" #-} VkVideoEncodeH265RateControlLayerInfoEXT =
       VkVideoEncodeH265RateControlLayerInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , temporalId :: #{type uint8_t}
         , useInitialRcQp :: VkBool32
         , initialRcQp :: VkVideoEncodeH265QpEXT
         , useMinQp :: VkBool32
         , minQp :: VkVideoEncodeH265QpEXT
         , useMaxQp :: VkBool32
         , maxQp :: VkVideoEncodeH265QpEXT
         , useMaxFrameSize :: VkBool32
         , maxFrameSize :: VkVideoEncodeH265FrameSizeEXT
         }

instance Storable VkVideoEncodeH265RateControlLayerInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265RateControlLayerInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265RateControlLayerInfoEXT}

  peek ptr = 
    VkVideoEncodeH265RateControlLayerInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"temporalId" ptr)
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
    pokeField @"temporalId" ptr val
    pokeField @"useInitialRcQp" ptr val
    pokeField @"initialRcQp" ptr val
    pokeField @"useMinQp" ptr val
    pokeField @"minQp" ptr val
    pokeField @"useMaxQp" ptr val
    pokeField @"maxQp" ptr val
    pokeField @"useMaxFrameSize" ptr val
    pokeField @"maxFrameSize" ptr val

instance Offset "sType" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, pNext}

instance Offset "temporalId" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, temporalId}

instance Offset "useInitialRcQp" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, useInitialRcQp}

instance Offset "initialRcQp" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, initialRcQp}

instance Offset "useMinQp" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, useMinQp}

instance Offset "minQp" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, minQp}

instance Offset "useMaxQp" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, useMaxQp}

instance Offset "maxQp" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, maxQp}

instance Offset "useMaxFrameSize" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, useMaxFrameSize}

instance Offset "maxFrameSize" VkVideoEncodeH265RateControlLayerInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265RateControlLayerInfoEXT, maxFrameSize}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265RateControlLayerInfoEXT where

#endif