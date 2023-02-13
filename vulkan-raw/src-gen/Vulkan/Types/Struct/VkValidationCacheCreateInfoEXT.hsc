{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_cache

module Vulkan.Types.Struct.VkValidationCacheCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkValidationCacheCreateFlagsEXT



data {-# CTYPE "vulkan/vulkan.h" "VkValidationCacheCreateInfoEXT" #-} VkValidationCacheCreateInfoEXT =
       VkValidationCacheCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkValidationCacheCreateFlagsEXT
         , initialDataSize :: #{type size_t}
         , pInitialData :: Ptr ()
         }

instance Storable VkValidationCacheCreateInfoEXT where
  sizeOf    _ = #{size      VkValidationCacheCreateInfoEXT}
  alignment _ = #{alignment VkValidationCacheCreateInfoEXT}

  peek ptr = 
    VkValidationCacheCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"initialDataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pInitialData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"initialDataSize" ptr val
    pokeField @"pInitialData" ptr val

instance Offset "sType" VkValidationCacheCreateInfoEXT where
  rawOffset = #{offset VkValidationCacheCreateInfoEXT, sType}

instance Offset "pNext" VkValidationCacheCreateInfoEXT where
  rawOffset = #{offset VkValidationCacheCreateInfoEXT, pNext}

instance Offset "flags" VkValidationCacheCreateInfoEXT where
  rawOffset = #{offset VkValidationCacheCreateInfoEXT, flags}

instance Offset "initialDataSize" VkValidationCacheCreateInfoEXT where
  rawOffset = #{offset VkValidationCacheCreateInfoEXT, initialDataSize}

instance Offset "pInitialData" VkValidationCacheCreateInfoEXT where
  rawOffset = #{offset VkValidationCacheCreateInfoEXT, pInitialData}

#else

module Vulkan.Types.Struct.VkValidationCacheCreateInfoEXT where

#endif