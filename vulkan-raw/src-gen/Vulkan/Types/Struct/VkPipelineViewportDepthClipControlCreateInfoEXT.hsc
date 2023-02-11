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
  sizeOf    _ = #{size      struct VkPipelineViewportDepthClipControlCreateInfoEXT}
  alignment _ = #{alignment struct VkPipelineViewportDepthClipControlCreateInfoEXT}

  peek ptr = 
    VkPipelineViewportDepthClipControlCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"negativeOneToOne" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"negativeOneToOne" ptr val

instance Offset "sType" VkPipelineViewportDepthClipControlCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineViewportDepthClipControlCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineViewportDepthClipControlCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineViewportDepthClipControlCreateInfoEXT, pNext}

instance Offset "negativeOneToOne" VkPipelineViewportDepthClipControlCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineViewportDepthClipControlCreateInfoEXT, negativeOneToOne}

#else

module Vulkan.Types.Struct.VkPipelineViewportDepthClipControlCreateInfoEXT where

#endif