{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_info

module Vulkan.Types.Struct.VkShaderResourceUsageAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkShaderResourceUsageAMD" #-} VkShaderResourceUsageAMD =
       VkShaderResourceUsageAMD
         { numUsedVgprs :: #{type uint32_t}
         , numUsedSgprs :: #{type uint32_t}
         , ldsSizePerLocalWorkGroup :: #{type uint32_t}
         , ldsUsageSizeInBytes :: #{type size_t}
         , scratchMemUsageInBytes :: #{type size_t}
         }

instance Storable VkShaderResourceUsageAMD where
  sizeOf    _ = #{size      struct VkShaderResourceUsageAMD}
  alignment _ = #{alignment struct VkShaderResourceUsageAMD}

  peek ptr = 
    VkShaderResourceUsageAMD
       <$> peek (offset @"numUsedVgprs" ptr)
       <*> peek (offset @"numUsedSgprs" ptr)
       <*> peek (offset @"ldsSizePerLocalWorkGroup" ptr)
       <*> peek (offset @"ldsUsageSizeInBytes" ptr)
       <*> peek (offset @"scratchMemUsageInBytes" ptr)

  poke ptr val = do
    pokeField @"numUsedVgprs" ptr val
    pokeField @"numUsedSgprs" ptr val
    pokeField @"ldsSizePerLocalWorkGroup" ptr val
    pokeField @"ldsUsageSizeInBytes" ptr val
    pokeField @"scratchMemUsageInBytes" ptr val

instance Offset "numUsedVgprs" VkShaderResourceUsageAMD where
  rawOffset = #{offset struct VkShaderResourceUsageAMD, numUsedVgprs}

instance Offset "numUsedSgprs" VkShaderResourceUsageAMD where
  rawOffset = #{offset struct VkShaderResourceUsageAMD, numUsedSgprs}

instance Offset "ldsSizePerLocalWorkGroup" VkShaderResourceUsageAMD where
  rawOffset = #{offset struct VkShaderResourceUsageAMD, ldsSizePerLocalWorkGroup}

instance Offset "ldsUsageSizeInBytes" VkShaderResourceUsageAMD where
  rawOffset = #{offset struct VkShaderResourceUsageAMD, ldsUsageSizeInBytes}

instance Offset "scratchMemUsageInBytes" VkShaderResourceUsageAMD where
  rawOffset = #{offset struct VkShaderResourceUsageAMD, scratchMemUsageInBytes}

#else

module Vulkan.Types.Struct.VkShaderResourceUsageAMD where

#endif