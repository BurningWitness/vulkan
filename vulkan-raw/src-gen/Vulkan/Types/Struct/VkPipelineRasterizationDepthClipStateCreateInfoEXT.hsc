{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPipelineRasterizationDepthClipStateCreateInfoEXT}
  alignment _ = #{alignment VkPipelineRasterizationDepthClipStateCreateInfoEXT}

  peek ptr = 
    VkPipelineRasterizationDepthClipStateCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthClipEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"depthClipEnable" ptr val

instance Offset "sType" VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationDepthClipStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationDepthClipStateCreateInfoEXT, pNext}

instance Offset "flags" VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationDepthClipStateCreateInfoEXT, flags}

instance Offset "depthClipEnable" VkPipelineRasterizationDepthClipStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationDepthClipStateCreateInfoEXT, depthClipEnable}

#else

module Vulkan.Types.Struct.VkPipelineRasterizationDepthClipStateCreateInfoEXT where

#endif