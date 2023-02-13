{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clip_control

module Vulkan.Types.Struct.VkPipelineViewportDepthClipControlCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineViewportDepthClipControlCreateInfoEXT" #-} VkPipelineViewportDepthClipControlCreateInfoEXT =
       VkPipelineViewportDepthClipControlCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , negativeOneToOne :: VkBool32
         }

instance Storable VkPipelineViewportDepthClipControlCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineViewportDepthClipControlCreateInfoEXT}
  alignment _ = #{alignment VkPipelineViewportDepthClipControlCreateInfoEXT}

  peek ptr = 
    VkPipelineViewportDepthClipControlCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"negativeOneToOne" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"negativeOneToOne" ptr val

instance Offset "sType" VkPipelineViewportDepthClipControlCreateInfoEXT where
  rawOffset = #{offset VkPipelineViewportDepthClipControlCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineViewportDepthClipControlCreateInfoEXT where
  rawOffset = #{offset VkPipelineViewportDepthClipControlCreateInfoEXT, pNext}

instance Offset "negativeOneToOne" VkPipelineViewportDepthClipControlCreateInfoEXT where
  rawOffset = #{offset VkPipelineViewportDepthClipControlCreateInfoEXT, negativeOneToOne}

#else

module Vulkan.Types.Struct.VkPipelineViewportDepthClipControlCreateInfoEXT where

#endif