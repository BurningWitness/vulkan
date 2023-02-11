{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clip_enable

module Vulkan.Types.Struct.VkPipelineRasterizationDepthClipStateCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineRasterizationDepthClipStateCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRasterizationDepthClipStateCreateInfoEXT" #-} VkPipelineRasterizationDepthClipStateCreateInfoEXT =
       VkPipelineRasterizationDepthClipStateCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineRasterizationDepthClipStateCreateFlagsEXT -- ^ Reserved
         , depthClipEnable :: VkBool32
         }

instance Storable VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  sizeOf    _ = #{size      struct VkPipelineRasterizationDepthClipStateCreateInfoEXT}
  alignment _ = #{alignment struct VkPipelineRasterizationDepthClipStateCreateInfoEXT}

  peek ptr = 
    VkPipelineRasterizationDepthClipStateCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"depthClipEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"depthClipEnable" ptr val

instance Offset "sType" VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationDepthClipStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationDepthClipStateCreateInfoEXT, pNext}

instance Offset "flags" VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationDepthClipStateCreateInfoEXT, flags}

instance Offset "depthClipEnable" VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationDepthClipStateCreateInfoEXT, depthClipEnable}

#else

module Vulkan.Types.Struct.VkPipelineRasterizationDepthClipStateCreateInfoEXT where

#endif