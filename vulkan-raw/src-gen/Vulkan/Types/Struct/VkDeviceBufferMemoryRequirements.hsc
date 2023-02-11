{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkDeviceBufferMemoryRequirements where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBufferCreateInfo



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceBufferMemoryRequirements" #-} VkDeviceBufferMemoryRequirements =
       VkDeviceBufferMemoryRequirements
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pCreateInfo :: Ptr VkBufferCreateInfo
         }

instance Storable VkDeviceBufferMemoryRequirements where
  sizeOf    _ = #{size      struct VkDeviceBufferMemoryRequirements}
  alignment _ = #{alignment struct VkDeviceBufferMemoryRequirements}

  peek ptr = 
    VkDeviceBufferMemoryRequirements
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pCreateInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pCreateInfo" ptr val

instance Offset "sType" VkDeviceBufferMemoryRequirements where
  rawOffset = #{offset struct VkDeviceBufferMemoryRequirements, sType}

instance Offset "pNext" VkDeviceBufferMemoryRequirements where
  rawOffset = #{offset struct VkDeviceBufferMemoryRequirements, pNext}

instance Offset "pCreateInfo" VkDeviceBufferMemoryRequirements where
  rawOffset = #{offset struct VkDeviceBufferMemoryRequirements, pCreateInfo}

#else

module Vulkan.Types.Struct.VkDeviceBufferMemoryRequirements where

#endif