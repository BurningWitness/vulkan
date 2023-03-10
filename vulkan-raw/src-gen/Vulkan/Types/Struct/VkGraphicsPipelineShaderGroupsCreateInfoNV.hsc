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

module Vulkan.Types.Struct.VkGraphicsPipelineShaderGroupsCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkGraphicsShaderGroupCreateInfoNV



data {-# CTYPE "vulkan/vulkan.h" "VkGraphicsPipelineShaderGroupsCreateInfoNV" #-} VkGraphicsPipelineShaderGroupsCreateInfoNV =
       VkGraphicsPipelineShaderGroupsCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , groupCount :: #{type uint32_t}
         , pGroups :: Ptr VkGraphicsShaderGroupCreateInfoNV
         , pipelineCount :: #{type uint32_t}
         , pPipelines :: Ptr VkPipeline
         }

instance Storable VkGraphicsPipelineShaderGroupsCreateInfoNV where
  sizeOf    _ = #{size      VkGraphicsPipelineShaderGroupsCreateInfoNV}
  alignment _ = #{alignment VkGraphicsPipelineShaderGroupsCreateInfoNV}

  peek ptr = 
    VkGraphicsPipelineShaderGroupsCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"groupCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pGroups" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPipelines" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"groupCount" ptr val
    pokeField @"pGroups" ptr val
    pokeField @"pipelineCount" ptr val
    pokeField @"pPipelines" ptr val

instance Offset "sType" VkGraphicsPipelineShaderGroupsCreateInfoNV where
  rawOffset = #{offset VkGraphicsPipelineShaderGroupsCreateInfoNV, sType}

instance Offset "pNext" VkGraphicsPipelineShaderGroupsCreateInfoNV where
  rawOffset = #{offset VkGraphicsPipelineShaderGroupsCreateInfoNV, pNext}

instance Offset "groupCount" VkGraphicsPipelineShaderGroupsCreateInfoNV where
  rawOffset = #{offset VkGraphicsPipelineShaderGroupsCreateInfoNV, groupCount}

instance Offset "pGroups" VkGraphicsPipelineShaderGroupsCreateInfoNV where
  rawOffset = #{offset VkGraphicsPipelineShaderGroupsCreateInfoNV, pGroups}

instance Offset "pipelineCount" VkGraphicsPipelineShaderGroupsCreateInfoNV where
  rawOffset = #{offset VkGraphicsPipelineShaderGroupsCreateInfoNV, pipelineCount}

instance Offset "pPipelines" VkGraphicsPipelineShaderGroupsCreateInfoNV where
  rawOffset = #{offset VkGraphicsPipelineShaderGroupsCreateInfoNV, pPipelines}

#else

module Vulkan.Types.Struct.VkGraphicsPipelineShaderGroupsCreateInfoNV where

#endif