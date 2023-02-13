{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Struct.VkMultisamplePropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkMultisamplePropertiesEXT" #-} VkMultisamplePropertiesEXT =
       VkMultisamplePropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxSampleLocationGridSize :: VkExtent2D
         }

instance Storable VkMultisamplePropertiesEXT where
  sizeOf    _ = #{size      VkMultisamplePropertiesEXT}
  alignment _ = #{alignment VkMultisamplePropertiesEXT}

  peek ptr = 
    VkMultisamplePropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSampleLocationGridSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxSampleLocationGridSize" ptr val

instance Offset "sType" VkMultisamplePropertiesEXT where
  rawOffset = #{offset VkMultisamplePropertiesEXT, sType}

instance Offset "pNext" VkMultisamplePropertiesEXT where
  rawOffset = #{offset VkMultisamplePropertiesEXT, pNext}

instance Offset "maxSampleLocationGridSize" VkMultisamplePropertiesEXT where
  rawOffset = #{offset VkMultisamplePropertiesEXT, maxSampleLocationGridSize}

#else

module Vulkan.Types.Struct.VkMultisamplePropertiesEXT where

#endif