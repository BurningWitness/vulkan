{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkShaderResourceUsageAMD}
  alignment _ = #{alignment VkShaderResourceUsageAMD}

  peek ptr = 
    VkShaderResourceUsageAMD
       <$> peek (Foreign.Storable.Offset.offset @"numUsedVgprs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"numUsedSgprs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ldsSizePerLocalWorkGroup" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ldsUsageSizeInBytes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"scratchMemUsageInBytes" ptr)

  poke ptr val = do
    pokeField @"numUsedVgprs" ptr val
    pokeField @"numUsedSgprs" ptr val
    pokeField @"ldsSizePerLocalWorkGroup" ptr val
    pokeField @"ldsUsageSizeInBytes" ptr val
    pokeField @"scratchMemUsageInBytes" ptr val

instance Offset "numUsedVgprs" VkShaderResourceUsageAMD where
  rawOffset = #{offset VkShaderResourceUsageAMD, numUsedVgprs}

instance Offset "numUsedSgprs" VkShaderResourceUsageAMD where
  rawOffset = #{offset VkShaderResourceUsageAMD, numUsedSgprs}

instance Offset "ldsSizePerLocalWorkGroup" VkShaderResourceUsageAMD where
  rawOffset = #{offset VkShaderResourceUsageAMD, ldsSizePerLocalWorkGroup}

instance Offset "ldsUsageSizeInBytes" VkShaderResourceUsageAMD where
  rawOffset = #{offset VkShaderResourceUsageAMD, ldsUsageSizeInBytes}

instance Offset "scratchMemUsageInBytes" VkShaderResourceUsageAMD where
  rawOffset = #{offset VkShaderResourceUsageAMD, scratchMemUsageInBytes}

#else

module Vulkan.Types.Struct.VkShaderResourceUsageAMD where

#endif