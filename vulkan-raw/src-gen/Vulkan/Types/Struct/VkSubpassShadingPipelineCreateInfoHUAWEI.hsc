{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_subpass_shading

module Vulkan.Types.Struct.VkSubpassShadingPipelineCreateInfoHUAWEI where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassShadingPipelineCreateInfoHUAWEI" #-} VkSubpassShadingPipelineCreateInfoHUAWEI =
       VkSubpassShadingPipelineCreateInfoHUAWEI
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , renderPass :: VkRenderPass
         , subpass :: #{type uint32_t}
         }

instance Storable VkSubpassShadingPipelineCreateInfoHUAWEI where
  sizeOf    _ = #{size      VkSubpassShadingPipelineCreateInfoHUAWEI}
  alignment _ = #{alignment VkSubpassShadingPipelineCreateInfoHUAWEI}

  peek ptr = 
    VkSubpassShadingPipelineCreateInfoHUAWEI
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"renderPass" ptr)
       <*> peek (offset @"subpass" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"renderPass" ptr val
    pokeField @"subpass" ptr val

instance Offset "sType" VkSubpassShadingPipelineCreateInfoHUAWEI where
  rawOffset = #{offset VkSubpassShadingPipelineCreateInfoHUAWEI, sType}

instance Offset "pNext" VkSubpassShadingPipelineCreateInfoHUAWEI where
  rawOffset = #{offset VkSubpassShadingPipelineCreateInfoHUAWEI, pNext}

instance Offset "renderPass" VkSubpassShadingPipelineCreateInfoHUAWEI where
  rawOffset = #{offset VkSubpassShadingPipelineCreateInfoHUAWEI, renderPass}

instance Offset "subpass" VkSubpassShadingPipelineCreateInfoHUAWEI where
  rawOffset = #{offset VkSubpassShadingPipelineCreateInfoHUAWEI, subpass}

#else

module Vulkan.Types.Struct.VkSubpassShadingPipelineCreateInfoHUAWEI where

#endif