{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkGraphicsShaderGroupCreateInfoNV}
  alignment _ = #{alignment VkGraphicsShaderGroupCreateInfoNV}

  peek ptr = 
    VkGraphicsShaderGroupCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stageCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pVertexInputState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pTessellationState" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stageCount" ptr val
    pokeField @"pStages" ptr val
    pokeField @"pVertexInputState" ptr val
    pokeField @"pTessellationState" ptr val

instance Offset "sType" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset VkGraphicsShaderGroupCreateInfoNV, sType}

instance Offset "pNext" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset VkGraphicsShaderGroupCreateInfoNV, pNext}

instance Offset "stageCount" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset VkGraphicsShaderGroupCreateInfoNV, stageCount}

instance Offset "pStages" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset VkGraphicsShaderGroupCreateInfoNV, pStages}

instance Offset "pVertexInputState" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset VkGraphicsShaderGroupCreateInfoNV, pVertexInputState}

instance Offset "pTessellationState" VkGraphicsShaderGroupCreateInfoNV where
  rawOffset = #{offset VkGraphicsShaderGroupCreateInfoNV, pTessellationState}

#else

module Vulkan.Types.Struct.VkGraphicsShaderGroupCreateInfoNV where

#endif