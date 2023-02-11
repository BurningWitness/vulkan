{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkGraphicsShaderGroupCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineShaderStageCreateInfo
import Vulkan.Types.Struct.VkPipelineTessellationStateCreateInfo
import Vulkan.Types.Struct.VkPipelineVertexInputStateCreateInfo



data {-# CTYPE "vulkan/vulkan.h" "VkGraphicsShaderGroupCreateInfoNV" #-} VkGraphicsShaderGroupCreateInfoNV =
       VkGraphicsShaderGroupCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stageCount :: #{type uint32_t}
         , pStages :: Ptr VkPipelineShaderStageCreateInfo
         , pVertexInputState :: Ptr VkPipelineVertexInputStateCreateInfo
         , pTessellationState :: Ptr VkPipelineTessellationStateCreateInfo
         }

instance Storable VkGraphicsShaderGroupCreateInfoNV where
  sizeOf    _ = #{size      struct VkGraphicsShaderGroupCreateInfoNV}
  alignment _ = #{alignment struct VkGraphicsShaderGroupCreateInfoNV}

  peek ptr = 
    VkGraphicsShaderGroupCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stageCount" ptr)
       <*> peek (offset @"pStages" ptr)
       <*> peek (offset @"pVertexInputState" ptr)
       <*> peek (offset @"pTessellationState" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stageCount" ptr val
    pokeField @"pStages" ptr val
    pokeField @"pVertexInputState" ptr val
    pokeField @"pTessellationState" ptr val

instance Offset "sType" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkGraphicsShaderGroupCreateInfoNV, sType}

instance Offset "pNext" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkGraphicsShaderGroupCreateInfoNV, pNext}

instance Offset "stageCount" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkGraphicsShaderGroupCreateInfoNV, stageCount}

instance Offset "pStages" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkGraphicsShaderGroupCreateInfoNV, pStages}

instance Offset "pVertexInputState" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkGraphicsShaderGroupCreateInfoNV, pVertexInputState}

instance Offset "pTessellationState" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkGraphicsShaderGroupCreateInfoNV, pTessellationState}

#else

module Vulkan.Types.Struct.VkGraphicsShaderGroupCreateInfoNV where

#endif