{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkConformanceVersion where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkConformanceVersion" #-} VkConformanceVersion =
       VkConformanceVersion
         { major :: #{type uint8_t}
         , minor :: #{type uint8_t}
         , subminor :: #{type uint8_t}
         , patch :: #{type uint8_t}
         }

instance Storable VkConformanceVersion where
  sizeOf    _ = #{size      struct VkConformanceVersion}
  alignment _ = #{alignment struct VkConformanceVersion}

  peek ptr = 
    VkConformanceVersion
       <$> peek (offset @"major" ptr)
       <*> peek (offset @"minor" ptr)
       <*> peek (offset @"subminor" ptr)
       <*> peek (offset @"patch" ptr)

  poke ptr val = do
    pokeField @"major" ptr val
    pokeField @"minor" ptr val
    pokeField @"subminor" ptr val
    pokeField @"patch" ptr val

instance Offset "major" VkConformanceVersion where
  rawOffset = #{offset struct VkConformanceVersion, major}

instance Offset "minor" VkConformanceVersion where
  rawOffset = #{offset struct VkConformanceVersion, minor}

instance Offset "subminor" VkConformanceVersion where
  rawOffset = #{offset struct VkConformanceVersion, subminor}

instance Offset "patch" VkConformanceVersion where
  rawOffset = #{offset struct VkConformanceVersion, patch}

#else

module Vulkan.Types.Struct.VkConformanceVersion where

#endif