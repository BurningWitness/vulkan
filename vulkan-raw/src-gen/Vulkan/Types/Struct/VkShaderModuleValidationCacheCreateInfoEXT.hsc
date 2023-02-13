{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_cache

module Vulkan.Types.Struct.VkShaderModuleValidationCacheCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkShaderModuleValidationCacheCreateInfoEXT" #-} VkShaderModuleValidationCacheCreateInfoEXT =
       VkShaderModuleValidationCacheCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , validationCache :: VkValidationCacheEXT
         }

instance Storable VkShaderModuleValidationCacheCreateInfoEXT where
  sizeOf    _ = #{size      VkShaderModuleValidationCacheCreateInfoEXT}
  alignment _ = #{alignment VkShaderModuleValidationCacheCreateInfoEXT}

  peek ptr = 
    VkShaderModuleValidationCacheCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"validationCache" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"validationCache" ptr val

instance Offset "sType" VkShaderModuleValidationCacheCreateInfoEXT where
  rawOffset = #{offset VkShaderModuleValidationCacheCreateInfoEXT, sType}

instance Offset "pNext" VkShaderModuleValidationCacheCreateInfoEXT where
  rawOffset = #{offset VkShaderModuleValidationCacheCreateInfoEXT, pNext}

instance Offset "validationCache" VkShaderModuleValidationCacheCreateInfoEXT where
  rawOffset = #{offset VkShaderModuleValidationCacheCreateInfoEXT, validationCache}

#else

module Vulkan.Types.Struct.VkShaderModuleValidationCacheCreateInfoEXT where

#endif