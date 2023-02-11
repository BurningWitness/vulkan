{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPipelineShaderStageRequiredSubgroupSizeCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineShaderStageRequiredSubgroupSizeCreateInfo" #-} VkPipelineShaderStageRequiredSubgroupSizeCreateInfo =
       VkPipelineShaderStageRequiredSubgroupSizeCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , requiredSubgroupSize :: #{type uint32_t}
         }

instance Storable VkPipelineShaderStageRequiredSubgroupSizeCreateInfo where
  sizeOf    _ = #{size      struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfo}
  alignment _ = #{alignment struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfo}

  peek ptr = 
    VkPipelineShaderStageRequiredSubgroupSizeCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"requiredSubgroupSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"requiredSubgroupSize" ptr val

instance Offset "sType" VkPipelineShaderStageRequiredSubgroupSizeCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfo, sType}

instance Offset "pNext" VkPipelineShaderStageRequiredSubgroupSizeCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfo, pNext}

instance Offset "requiredSubgroupSize" VkPipelineShaderStageRequiredSubgroupSizeCreateInfo where
  rawOffset = #{offset struct VkPipelineShaderStageRequiredSubgroupSizeCreateInfo, requiredSubgroupSize}

#else

module Vulkan.Types.Struct.VkPipelineShaderStageRequiredSubgroupSizeCreateInfo where

#endif