{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subgroup_size_control

module Vulkan.Types.Struct.VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT" #-} VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT =
       VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , requiredSubgroupSize :: #{type uint32_t}
         }

instance Storable VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT}
  alignment _ = #{alignment VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT}

  peek ptr = 
    VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"requiredSubgroupSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"requiredSubgroupSize" ptr val

instance Offset "sType" VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT where
  rawOffset = #{offset VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT where
  rawOffset = #{offset VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT, pNext}

instance Offset "requiredSubgroupSize" VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT where
  rawOffset = #{offset VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT, requiredSubgroupSize}

#else

module Vulkan.Types.Struct.VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT where

#endif