{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_flags

module Vulkan.Types.Struct.VkValidationFlagsEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkValidationCheckEXT



data {-# CTYPE "vulkan/vulkan.h" "VkValidationFlagsEXT" #-} VkValidationFlagsEXT =
       VkValidationFlagsEXT
         { sType :: VkStructureType -- ^ Must be VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT
         , pNext :: Ptr ()
         , disabledValidationCheckCount :: #{type uint32_t} -- ^ Number of validation checks to disable
         , pDisabledValidationChecks :: Ptr VkValidationCheckEXT -- ^ Validation checks to disable
         }

instance Storable VkValidationFlagsEXT where
  sizeOf    _ = #{size      struct VkValidationFlagsEXT}
  alignment _ = #{alignment struct VkValidationFlagsEXT}

  peek ptr = 
    VkValidationFlagsEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"disabledValidationCheckCount" ptr)
       <*> peek (offset @"pDisabledValidationChecks" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"disabledValidationCheckCount" ptr val
    pokeField @"pDisabledValidationChecks" ptr val

instance Offset "sType" VkValidationFlagsEXT where
  rawOffset = #{offset struct VkValidationFlagsEXT, sType}

instance Offset "pNext" VkValidationFlagsEXT where
  rawOffset = #{offset struct VkValidationFlagsEXT, pNext}

instance Offset "disabledValidationCheckCount" VkValidationFlagsEXT where
  rawOffset = #{offset struct VkValidationFlagsEXT, disabledValidationCheckCount}

instance Offset "pDisabledValidationChecks" VkValidationFlagsEXT where
  rawOffset = #{offset struct VkValidationFlagsEXT, pDisabledValidationChecks}

#else

module Vulkan.Types.Struct.VkValidationFlagsEXT where

#endif